// In this file, all Page components from 'src/pages` are auto-imported. Nested
// directories are supported, and should be uppercase. Each subdirectory will be
// prepended onto the component name.
//
// Examples:
//
// 'src/pages/HomePage/HomePage.js'         -> HomePage
// 'src/pages/Admin/BooksPage/BooksPage.js' -> AdminBooksPage

import { Router, Route, Set } from '@redwoodjs/router'
import PostsLayout from 'src/layouts/PostsLayout'
import BlockchainvotingLayout from 'src/layouts/BlockchainvotingLayout/'

const Routes = () => {
  return (
    <Router>
      <Route path="/blog-post" page={BlogPostPage} name="blogPost" />
      <Set wrap={PostsLayout}>
        <Route path="/posts/new" page={PostNewPostPage} name="newPost" />
        <Route path="/posts/{id:Int}/edit" page={PostEditPostPage} name="editPost" />
        <Route path="/posts/{id:Int}" page={PostPostPage} name="post" />
        <Route path="/posts" page={PostPostsPage} name="posts" />
      </Set>
      <Set wrap={BlockchainvotingLayout}>
      <Route path="/about" page={AboutPage} name="about" />
      <Route path="/" page={HomePage} name="home" />
      <Route path="/blog-post/{id}" page={BlogPostPage} name="blogPost" />
      <Route notfound page={NotFoundPage} />
      </Set>
    </Router>
  )
}

export default Routes
