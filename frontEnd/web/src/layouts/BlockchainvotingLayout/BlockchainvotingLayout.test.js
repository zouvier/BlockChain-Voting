import { render } from '@redwoodjs/testing'

import BlockchainvotingLayout from './BlockchainvotingLayout'

describe('BlockchainvotingLayout', () => {
  it('renders successfully', () => {
    expect(() => {
      render(<BlockchainvotingLayout />)
    }).not.toThrow()
  })
})
