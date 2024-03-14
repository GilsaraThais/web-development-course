import { useQuery } from "@tanstack/react-query";

async function getCep(cep: string) {
  // const data = await fetch ("https://cdn.apicep.com/file/apicep/06233-030.json;" )
  const data = await fetch("https://api.github.com/users/GilsaraThais");
  return data.json();
}

export function userQueryCep() {
  const query = useQuery({
    queryKey: ["cep"],
    queryFn: () => getCep("63580-000"),
  });

  return query;
}
