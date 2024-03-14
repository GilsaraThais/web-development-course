import { userQueryCep } from "../hooks/userQueryCep";

export function App() {
  const { data, isLoading, error } = userQueryCep();
  console.log(data);

  return (
    <>
      <h1>App</h1>
      {isLoading && <div>Loading...</div>}
      {!isLoading && error && <div>Error...</div>}
      <pre>{data}</pre>
    </>
  );
}
