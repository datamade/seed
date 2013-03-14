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

@TestFor(OccupantIncomeLookupController)
@Mock(OccupantIncomeLookup)
class OccupantIncomeLookupControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/occupantIncomeLookup/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.occupantIncomeLookupInstanceList.size() == 0
        assert model.occupantIncomeLookupInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.occupantIncomeLookupInstance != null
    }

    void testSave() {
        controller.save()

        assert model.occupantIncomeLookupInstance != null
        assert view == '/occupantIncomeLookup/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/occupantIncomeLookup/show/1'
        assert controller.flash.message != null
        assert OccupantIncomeLookup.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/occupantIncomeLookup/list'

        populateValidParams(params)
        def occupantIncomeLookup = new OccupantIncomeLookup(params)

        assert occupantIncomeLookup.save() != null

        params.id = occupantIncomeLookup.id

        def model = controller.show()

        assert model.occupantIncomeLookupInstance == occupantIncomeLookup
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/occupantIncomeLookup/list'

        populateValidParams(params)
        def occupantIncomeLookup = new OccupantIncomeLookup(params)

        assert occupantIncomeLookup.save() != null

        params.id = occupantIncomeLookup.id

        def model = controller.edit()

        assert model.occupantIncomeLookupInstance == occupantIncomeLookup
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/occupantIncomeLookup/list'

        response.reset()

        populateValidParams(params)
        def occupantIncomeLookup = new OccupantIncomeLookup(params)

        assert occupantIncomeLookup.save() != null

        // test invalid parameters in update
        params.id = occupantIncomeLookup.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/occupantIncomeLookup/edit"
        assert model.occupantIncomeLookupInstance != null

        occupantIncomeLookup.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/occupantIncomeLookup/show/$occupantIncomeLookup.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        occupantIncomeLookup.clearErrors()

        populateValidParams(params)
        params.id = occupantIncomeLookup.id
        params.version = -1
        controller.update()

        assert view == "/occupantIncomeLookup/edit"
        assert model.occupantIncomeLookupInstance != null
        assert model.occupantIncomeLookupInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/occupantIncomeLookup/list'

        response.reset()

        populateValidParams(params)
        def occupantIncomeLookup = new OccupantIncomeLookup(params)

        assert occupantIncomeLookup.save() != null
        assert OccupantIncomeLookup.count() == 1

        params.id = occupantIncomeLookup.id

        controller.delete()

        assert OccupantIncomeLookup.count() == 0
        assert OccupantIncomeLookup.get(occupantIncomeLookup.id) == null
        assert response.redirectedUrl == '/occupantIncomeLookup/list'
    }
}
