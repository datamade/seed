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

@TestFor(ItSystemTypeLookupController)
@Mock(ItSystemTypeLookup)
class ItSystemTypeLookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/itSystemTypeLookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.itSystemTypeLookupInstanceList.size() == 0
        assert model.itSystemTypeLookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.itSystemTypeLookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.itSystemTypeLookupInstance != null
        assert view == '/itSystemTypeLookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/itSystemTypeLookup/show/1'
        assert controller.flash.message != null
        assert ItSystemTypeLookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/itSystemTypeLookup/list'

        populateValidParams(params)
        def itSystemTypeLookup = new ItSystemTypeLookup(params)

        assert itSystemTypeLookup.save() != null

        params.id = itSystemTypeLookup.id

        def model = controller.show()

        assert model.itSystemTypeLookupInstance == itSystemTypeLookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/itSystemTypeLookup/list'

        populateValidParams(params)
        def itSystemTypeLookup = new ItSystemTypeLookup(params)

        assert itSystemTypeLookup.save() != null

        params.id = itSystemTypeLookup.id

        def model = controller.edit()

        assert model.itSystemTypeLookupInstance == itSystemTypeLookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/itSystemTypeLookup/list'

        response.reset()

        populateValidParams(params)
        def itSystemTypeLookup = new ItSystemTypeLookup(params)

        assert itSystemTypeLookup.save() != null

        // test invalid parameters in update
        params.id = itSystemTypeLookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/itSystemTypeLookup/edit"
        assert model.itSystemTypeLookupInstance != null

        itSystemTypeLookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/itSystemTypeLookup/show/$itSystemTypeLookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        itSystemTypeLookup.clearErrors()

        populateValidParams(params)
        params.id = itSystemTypeLookup.id
        params.version = -1
        controller.update()

        assert view == "/itSystemTypeLookup/edit"
        assert model.itSystemTypeLookupInstance != null
        assert model.itSystemTypeLookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/itSystemTypeLookup/list'

        response.reset()

        populateValidParams(params)
        def itSystemTypeLookup = new ItSystemTypeLookup(params)

        assert itSystemTypeLookup.save() != null
        assert ItSystemTypeLookup.count() == 1

        params.id = itSystemTypeLookup.id

        controller.delete()

        assert ItSystemTypeLookup.count() == 0
        assert ItSystemTypeLookup.get(itSystemTypeLookup.id) == null
        assert response.redirectedUrl == '/itSystemTypeLookup/list'
    }
}
