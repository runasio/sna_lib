defmodule SnaLibTest do
  use ExUnit.Case
  doctest SnaLib

  test "test data (text only)" do
    gen_data().data.content == "test"
    gen_data().meta.type == raw
    gen_data().meta.length == 4
  end

  test "data with media (image)" do
    gen_data()
    |> SnaLib.media(type: :image, ref: {:url, "https://localhost/test.jpg"})
  end

  test "data with media (video)" do
    gen_data()
    |> SnaLib.media(type: :video, ref: {:url, "https://localhost/test.mp4"})
  end

  test "data with media (audio)" do
    gen_data()
    |> SnaLib.media(type: :audio, ref: {:url, "https://localhost/test.mp3"})
  end

  test "metadata" do
    meta = gen_data()
    |> SnaLib.meta(location: {}, )
  end

  test "authentication" do
    gen_data()
    |> SnaLib.authentication(id: :test)
  end

  # https://developer.twitter.com/en/docs/tweets/post-and-engage/api-reference/post-statuses-update
  test "endpoint twitter" do
    e = gen_data()
    |> SnaLib.endpoint(:twitter)

    e.endpoint.method == :post
    e.endpoint.mode == :rest
    e.endpoint.target == "https://api.twitter.com/1.1/statuses/update.json"
  end

  # https://docs.microsoft.com/en-us/linkedin/consumer/integrations/self-serve/share-on-linkedin?context=linkedin/consumer/context
  test "endpoint linkedin" do
    e = gen_data()
    |> SnaLib.endpoint(:linkedin)

    e.endpoint.method == :post
    e.endpoint.mode == :rest
    e.endpoint.target == "https://api.linkedin.com/v2/ugcPosts"
  end

  # https://developers.facebook.com/docs/instagram/sharing-to-feed
  test "endpoint instagram" do
    e = gen_data()
    |> SnaLib.endpoint(:instagram)

    e.endpoint.mode == :graphql
    e.endpoint.target == "https://graph.facebook.com"
  end

  # POST https://api.medium.com/v1/users/{{authorId}}/posts
  test "endpoint medium" do
    e = gen_data()
    |> SnaLib.endpoint(:medium)

    e.endpoint.mode == :rest
    e.endpoint.method == :post
    e.endpoint.target = "https://api.medium.com/v1/users/:author/posts"
  end

  test "check header" do
    h = gen_data()
  end
  
  defp gen_data() do
    SnaLib.new()
    |> SnaLib.data(content: "test", type: raw)
  end
      
end
