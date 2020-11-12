defmodule AddressConverter.NominatimTest do
  use ExUnit.Case, async: true
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  alias AddressConverter.Nominatim

  setup do
    ExVCR.Config.cassette_library_dir("fixture/vcr_cassettes")
    :ok
  end

  describe "fetch_coordinates/1" do
    test "for given query it should return proper coordinates" do
      use_cassette "nominatim" do
        response = %{lat: "52.4082663", lon: "16.9335199"}

        assert Nominatim.fetch_coordinates("Poznan, Poland") == response
      end
    end
  end
end
