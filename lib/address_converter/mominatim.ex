defmodule AddressConverter.Nominatim do
  @base_url "https://nominatim.openstreetmap.org/search?format=json&q="
  @headers [{"Content-Type", "application/json"}]

  def fetch_coordinates(query) do
    with %{ body: body } <- HTTPoison.get!(@base_url <> query, @headers),
         response <- Jason.decode!(body) do
      response
      |> Enum.map(&%{ lat: &1["lat"], lon: &1["lon"] })
      |> Enum.at(0)
    else
      _ -> %{}
    end
  end
end
