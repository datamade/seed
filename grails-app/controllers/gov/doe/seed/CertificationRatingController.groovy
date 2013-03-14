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

class CertificationRatingController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [certificationRatingInstanceList: CertificationRating.list(params), certificationRatingInstanceTotal: CertificationRating.count()]
    }

    def create() {
        [certificationRatingInstance: new CertificationRating(params)]
    }

    def save() {
        def certificationRatingInstance = new CertificationRating(params)
        if (!certificationRatingInstance.save(flush: true)) {
            render(view: "create", model: [certificationRatingInstance: certificationRatingInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), certificationRatingInstance.id])
        redirect(action: "show", id: certificationRatingInstance.id)
    }

    def show(Long id) {
        def certificationRatingInstance = CertificationRating.get(id)
        if (!certificationRatingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), id])
            redirect(action: "list")
            return
        }

        [certificationRatingInstance: certificationRatingInstance]
    }

    def edit(Long id) {
        def certificationRatingInstance = CertificationRating.get(id)
        if (!certificationRatingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), id])
            redirect(action: "list")
            return
        }

        [certificationRatingInstance: certificationRatingInstance]
    }

    def update(Long id, Long version) {
        def certificationRatingInstance = CertificationRating.get(id)
        if (!certificationRatingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (certificationRatingInstance.version > version) {
                certificationRatingInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'certificationRating.label', default: 'CertificationRating')] as Object[],
                          "Another user has updated this CertificationRating while you were editing")
                render(view: "edit", model: [certificationRatingInstance: certificationRatingInstance])
                return
            }
        }

        certificationRatingInstance.properties = params

        if (!certificationRatingInstance.save(flush: true)) {
            render(view: "edit", model: [certificationRatingInstance: certificationRatingInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), certificationRatingInstance.id])
        redirect(action: "show", id: certificationRatingInstance.id)
    }

    def delete(Long id) {
        def certificationRatingInstance = CertificationRating.get(id)
        if (!certificationRatingInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), id])
            redirect(action: "list")
            return
        }

        try {
            certificationRatingInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'certificationRating.label', default: 'CertificationRating'), id])
            redirect(action: "show", id: id)
        }
    }
}
