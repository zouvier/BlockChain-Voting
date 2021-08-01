import { Link, routes } from '@redwoodjs/router'
const BlockchainvotingLayout = ({ children }) => {
  return (    
  <>
    <header>
      <h1>BlockChain Voting</h1>
      <nav>
        <ul>
          <li>
            <Link to={routes.about()}>About</Link> 
          </li>
          <li>
          <Link to={routes.blogPost()}>Blog post</Link>
          </li>
          <li>
          <Link to={routes.home()}>Home</Link>
          </li>
        </ul>
      </nav>
    </header>
    <main>{children}</main>
    <footer>
      <h1>This is the footer</h1>
    </footer>
  </>
  )
}

export default BlockchainvotingLayout
