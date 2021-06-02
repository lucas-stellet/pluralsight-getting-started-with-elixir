defmodule Sample.Calendar do
  def day_abbreviation(day) do
    cond do
      day == :Monday -> "M"
      day == :Tuesday -> "T"
      day == :Wednesday -> "W"
      day == :Thursday -> "Th"
      day == :Friday -> "F"
      day == :Saturday -> "Sa"
      day == :Sunday -> "Su"
      true -> "Invalid day"
    end
  end

  def day_abbreviation2(day) do
    case day do
      :Monday -> "M"
      :Tuesday -> "Tu"
      :Wednesday -> "W"
      :Thursday -> "Th"
      :Friday -> "Fr"
      :Saturday -> "Sa"
      :Sunday -> "Su"
      _ -> "Invalid day"
    end
  end

  def describe_date(date) do
    case date do
      {1, _, _} -> "Brand new month!"
      {25, 12, _} -> "Merry Christmas"
      {25, month, _} -> "Only #{12 - month} months to Christmas"
      {_, month, _} when month <= 12 -> "Just an average day."
      {31, 10, _} -> "Happy Halloween"
      {_, _, _} -> "Invalid month"
    end
  end

  def send_tweet(path) do
    case File.read(path) do
      {:ok, data} -> IO.puts(data)
      {:error, error} -> IO.puts("Could not open file. Error #{error}")
    end
  end
end
