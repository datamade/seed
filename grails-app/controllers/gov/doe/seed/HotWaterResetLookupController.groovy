/**
 * Copyright (c) 2013, U.S. Department of Energy
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without 
 * modification, are permitted provided that the following conditions are met:
 * 
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice, 
 *   this list of conditions and the following disclaimer in the documentation 
 *   and/or other materials provided with the distribution.
 * - Neither the name of the U.S. Department of Energy nor the names of its 
 *   contributors may be used to endorse or promote products derived from this 
 *   software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
 * POSSIBILITY OF SUCH DAMAGE.
 */
package gov.doe.seed

import org.springframework.dao.DataIntegrityViolationException

class HotWaterResetLookupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [hotWaterResetLookupInstanceList: HotWaterResetLookup.list(params), hotWaterResetLookupInstanceTotal: HotWaterResetLookup.count()]
    }

    def create() {
        [hotWaterResetLookupInstance: new HotWaterResetLookup(params)]
    }

    def save() {
        def hotWaterResetLookupInstance = new HotWaterResetLookup(params)
        if (!hotWaterResetLookupInstance.save(flush: true)) {
            render(view: "create", model: [hotWaterResetLookupInstance: hotWaterResetLookupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), hotWaterResetLookupInstance.id])
        redirect(action: "show", id: hotWaterResetLookupInstance.id)
    }

    def show(Long id) {
        def hotWaterResetLookupInstance = HotWaterResetLookup.get(id)
        if (!hotWaterResetLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), id])
            redirect(action: "list")
            return
        }

        [hotWaterResetLookupInstance: hotWaterResetLookupInstance]
    }

    def edit(Long id) {
        def hotWaterResetLookupInstance = HotWaterResetLookup.get(id)
        if (!hotWaterResetLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), id])
            redirect(action: "list")
            return
        }

        [hotWaterResetLookupInstance: hotWaterResetLookupInstance]
    }

    def update(Long id, Long version) {
        def hotWaterResetLookupInstance = HotWaterResetLookup.get(id)
        if (!hotWaterResetLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (hotWaterResetLookupInstance.version > version) {
                hotWaterResetLookupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup')] as Object[],
                          "Another user has updated this HotWaterResetLookup while you were editing")
                render(view: "edit", model: [hotWaterResetLookupInstance: hotWaterResetLookupInstance])
                return
            }
        }

        hotWaterResetLookupInstance.properties = params

        if (!hotWaterResetLookupInstance.save(flush: true)) {
            render(view: "edit", model: [hotWaterResetLookupInstance: hotWaterResetLookupInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), hotWaterResetLookupInstance.id])
        redirect(action: "show", id: hotWaterResetLookupInstance.id)
    }

    def delete(Long id) {
        def hotWaterResetLookupInstance = HotWaterResetLookup.get(id)
        if (!hotWaterResetLookupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), id])
            redirect(action: "list")
            return
        }

        try {
            hotWaterResetLookupInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'hotWaterResetLookup.label', default: 'HotWaterResetLookup'), id])
            redirect(action: "show", id: id)
        }
    }
}
