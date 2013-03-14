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

class SystemItController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [systemItInstanceList: SystemIt.list(params), systemItInstanceTotal: SystemIt.count()]
    }

    def create() {
        [systemItInstance: new SystemIt(params)]
    }

    def save() {
        def systemItInstance = new SystemIt(params)
        if (!systemItInstance.save(flush: true)) {
            render(view: "create", model: [systemItInstance: systemItInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), systemItInstance.id])
        redirect(action: "show", id: systemItInstance.id)
    }

    def show(Long id) {
        def systemItInstance = SystemIt.get(id)
        if (!systemItInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), id])
            redirect(action: "list")
            return
        }

        [systemItInstance: systemItInstance]
    }

    def edit(Long id) {
        def systemItInstance = SystemIt.get(id)
        if (!systemItInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), id])
            redirect(action: "list")
            return
        }

        [systemItInstance: systemItInstance]
    }

    def update(Long id, Long version) {
        def systemItInstance = SystemIt.get(id)
        if (!systemItInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (systemItInstance.version > version) {
                systemItInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'systemIt.label', default: 'SystemIt')] as Object[],
                          "Another user has updated this SystemIt while you were editing")
                render(view: "edit", model: [systemItInstance: systemItInstance])
                return
            }
        }

        systemItInstance.properties = params

        if (!systemItInstance.save(flush: true)) {
            render(view: "edit", model: [systemItInstance: systemItInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), systemItInstance.id])
        redirect(action: "show", id: systemItInstance.id)
    }

    def delete(Long id) {
        def systemItInstance = SystemIt.get(id)
        if (!systemItInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), id])
            redirect(action: "list")
            return
        }

        try {
            systemItInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'systemIt.label', default: 'SystemIt'), id])
            redirect(action: "show", id: id)
        }
    }
}
