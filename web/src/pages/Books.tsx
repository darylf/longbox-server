import * as React from 'react';
import { Route, Switch, useRouteMatch } from 'react-router-dom';
import { BookForm, BookList } from '../components/books';

const Books = (): JSX.Element => {
  const match = useRouteMatch();

  return (
    <>
      <Switch>
        <Route path={`${match.path}/new`}>
          <h1>create a book</h1>
          <BookForm />
        </Route>

        <Route path={`${match.path}`}>
          <h1>browse books</h1>
          <BookList />
        </Route>
      </Switch>
    </>
  );
};

export default Books;