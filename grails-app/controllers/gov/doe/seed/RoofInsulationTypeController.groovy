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

class RoofInsulationTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [roofInsulationTypeInstanceList: RoofInsulationType.list(params), roofInsulationTypeInstanceTotal: RoofInsulationType.count()]
    }

    def create() {
        [roofInsulationTypeInstance: new RoofInsulationType(params)]
    }

    def save() {
        def roofInsulationTypeInstance = new RoofInsulationType(params)
        if (!roofInsulationTypeInstance.save(flush: true)) {
            render(view: "create", model: [roofInsulationTypeInstance: roofInsulationTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), roofInsulationTypeInstance.id])
        redirect(action: "show", id: roofInsulationTypeInstance.id)
    }

    def show(Long id) {
        def roofInsulationTypeInstance = RoofInsulationType.get(id)
        if (!roofInsulationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), id])
            redirect(action: "list")
            return
        }

        [roofInsulationTypeInstance: roofInsulationTypeInstance]
    }

    def edit(Long id) {
        def roofInsulationTypeInstance = RoofInsulationType.get(id)
        if (!roofInsulationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), id])
            redirect(action: "list")
            return
        }

        [roofInsulationTypeInstance: roofInsulationTypeInstance]
    }

    def update(Long id, Long version) {
        def roofInsulationTypeInstance = RoofInsulationType.get(id)
        if (!roofInsulationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (roofInsulationTypeInstance.version > version) {
                roofInsulationTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'roofInsulationType.label', default: 'RoofInsulationType')] as Object[],
                          "Another user has updated this RoofInsulationType while you were editing")
                render(view: "edit", model: [roofInsulationTypeInstance: roofInsulationTypeInstance])
                return
            }
        }

        roofInsulationTypeInstance.properties = params

        if (!roofInsulationTypeInstance.save(flush: true)) {
            render(view: "edit", model: [roofInsulationTypeInstance: roofInsulationTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), roofInsulationTypeInstance.id])
        redirect(action: "show", id: roofInsulationTypeInstance.id)
    }

    def delete(Long id) {
        def roofInsulationTypeInstance = RoofInsulationType.get(id)
        if (!roofInsulationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), id])
            redirect(action: "list")
            return
        }

        try {
            roofInsulationTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roofInsulationType.label', default: 'RoofInsulationType'), id])
            redirect(action: "show", id: id)
        }
    }
}
