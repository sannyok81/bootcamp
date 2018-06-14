module Colors
  class NoColorError < RuntimeError
  end

  def colors
    {
        "Alizarin crimson" => "AAtt",
        "Alloy orange" => "AATt",
        "Almond" => "AATT",
        "Amaranth" => "Aatt",
        "Amber" => "AaTt",
        "Begonia" => "AaTT",
        "Bittersweet" => "aatt",
        "Blush" => "aaTt",
        "Cadmium" => "aaTT"
    }
  end
end