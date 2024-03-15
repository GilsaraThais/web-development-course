import { userQueryCep } from "../hooks/userQueryCep";

type User = {
  id: number
  name: string;
  phone: string;
};

export function App() {
  const { data, isLoading, error } = userQueryCep();
  console.log(data);
   
  return (
    <>
      <h1>App</h1>
      {isLoading && <div>Loading...</div>}
      {!isLoading && error && <div>Error...</div>}
      {data?.map((user: User) => {
        return (
          <div className= "card" key={user.id}>
            <strong>{user.name}</strong>
            <p>{user.phone}</p>
          </div>
        );
      })}
    </>
  );
}
