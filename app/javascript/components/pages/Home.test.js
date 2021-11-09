import React from 'react'
import Enzyme, { shallow } from 'enzyme'
import Adapter from 'enzyme-adapter-react-16'
import Home from './Home'
import mockPic from '../mockFile.js'

Enzyme.configure({adapter: new Adapter()})

describe("When Home renders", () => {
    it("displays an heading", () => {
    const homeWrapper = shallow(<Home />)
    const showHeading = homeWrapper.find("h3")
    expect(showHeading.text()).toEqual("Welcome to City Scape Apartments")
    })
    it("displays an image", () => {
    const home = shallow(<Home />)
    expect(home.find("img").prop("src")).toEqual(mockPic);
  })
})
