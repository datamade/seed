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



import org.junit.*
import grails.test.mixin.*

@TestFor(DuctSealingLookupController)
@Mock(DuctSealingLookup)
class DuctSealingLookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ductSealingLookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ductSealingLookupInstanceList.size() == 0
        assert model.ductSealingLookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ductSealingLookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ductSealingLookupInstance != null
        assert view == '/ductSealingLookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ductSealingLookup/show/1'
        assert controller.flash.message != null
        assert DuctSealingLookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ductSealingLookup/list'

        populateValidParams(params)
        def ductSealingLookup = new DuctSealingLookup(params)

        assert ductSealingLookup.save() != null

        params.id = ductSealingLookup.id

        def model = controller.show()

        assert model.ductSealingLookupInstance == ductSealingLookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ductSealingLookup/list'

        populateValidParams(params)
        def ductSealingLookup = new DuctSealingLookup(params)

        assert ductSealingLookup.save() != null

        params.id = ductSealingLookup.id

        def model = controller.edit()

        assert model.ductSealingLookupInstance == ductSealingLookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ductSealingLookup/list'

        response.reset()

        populateValidParams(params)
        def ductSealingLookup = new DuctSealingLookup(params)

        assert ductSealingLookup.save() != null

        // test invalid parameters in update
        params.id = ductSealingLookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ductSealingLookup/edit"
        assert model.ductSealingLookupInstance != null

        ductSealingLookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ductSealingLookup/show/$ductSealingLookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ductSealingLookup.clearErrors()

        populateValidParams(params)
        params.id = ductSealingLookup.id
        params.version = -1
        controller.update()

        assert view == "/ductSealingLookup/edit"
        assert model.ductSealingLookupInstance != null
        assert model.ductSealingLookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ductSealingLookup/list'

        response.reset()

        populateValidParams(params)
        def ductSealingLookup = new DuctSealingLookup(params)

        assert ductSealingLookup.save() != null
        assert DuctSealingLookup.count() == 1

        params.id = ductSealingLookup.id

        controller.delete()

        assert DuctSealingLookup.count() == 0
        assert DuctSealingLookup.get(ductSealingLookup.id) == null
        assert response.redirectedUrl == '/ductSealingLookup/list'
    }
}
