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

@TestFor(FloorTypeLookupController)
@Mock(FloorTypeLookup)
class FloorTypeLookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/floorTypeLookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.floorTypeLookupInstanceList.size() == 0
        assert model.floorTypeLookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.floorTypeLookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.floorTypeLookupInstance != null
        assert view == '/floorTypeLookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/floorTypeLookup/show/1'
        assert controller.flash.message != null
        assert FloorTypeLookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/floorTypeLookup/list'

        populateValidParams(params)
        def floorTypeLookup = new FloorTypeLookup(params)

        assert floorTypeLookup.save() != null

        params.id = floorTypeLookup.id

        def model = controller.show()

        assert model.floorTypeLookupInstance == floorTypeLookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/floorTypeLookup/list'

        populateValidParams(params)
        def floorTypeLookup = new FloorTypeLookup(params)

        assert floorTypeLookup.save() != null

        params.id = floorTypeLookup.id

        def model = controller.edit()

        assert model.floorTypeLookupInstance == floorTypeLookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/floorTypeLookup/list'

        response.reset()

        populateValidParams(params)
        def floorTypeLookup = new FloorTypeLookup(params)

        assert floorTypeLookup.save() != null

        // test invalid parameters in update
        params.id = floorTypeLookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/floorTypeLookup/edit"
        assert model.floorTypeLookupInstance != null

        floorTypeLookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/floorTypeLookup/show/$floorTypeLookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        floorTypeLookup.clearErrors()

        populateValidParams(params)
        params.id = floorTypeLookup.id
        params.version = -1
        controller.update()

        assert view == "/floorTypeLookup/edit"
        assert model.floorTypeLookupInstance != null
        assert model.floorTypeLookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/floorTypeLookup/list'

        response.reset()

        populateValidParams(params)
        def floorTypeLookup = new FloorTypeLookup(params)

        assert floorTypeLookup.save() != null
        assert FloorTypeLookup.count() == 1

        params.id = floorTypeLookup.id

        controller.delete()

        assert FloorTypeLookup.count() == 0
        assert FloorTypeLookup.get(floorTypeLookup.id) == null
        assert response.redirectedUrl == '/floorTypeLookup/list'
    }
}
