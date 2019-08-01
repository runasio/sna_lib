# sna_lib

Social Network Automation Library is a common way to communicate with
all social network around the world.

## How to compile?

    mix compile

## How to test?

    mix test

## How to use manually?

First ensure `sna_lib` is started with all its dependencies.

    Application.ensure_all_started(:sna_lib)

Before initializing endpoint, we can list the one available.

    available_end_point = SnaLib.endpoint()

Now we can initalize endpoint manually:

    SnaLib.enable(:twitter)
    SnaLib.enable(:linkedin, [])
    
Or disable them:

    SnaLib.disable(:twitter)
    
It is, now, to send some message, but actually, we don't manage
authentication:

    iex> SnaLib.new()
    |> SnaLib.data(text: "mytext")
    |> SnaLib.media(image: {:url, "/path/to/image.jpg"})
    |> SnaLib.meta()
    |> SnaLib.send([:twitter, :linkedin])
    [{:twitter, ref1}, {:linkedin, ref2}]

## How it works?

```
  ____         ________        ________        ________        ________
 |     |      |        |      |        |      |        |      |        |
 | %{} | ===> | data/2 | ===> | meta/2 | ===> | cred/2 | ===> | conn/2 |
 |_____|      |________|      |________|      |________|      |________|

```

The first datastructure, a `Map` is altered by different functions.

### Reference

Each datastructure got an unique reference to identify it and alter it
asynchronously.

### Data

`:data` key is the main content of the structure, containing the
payload sent to the endpoint

### Media

`:media` is an extension of `:data` and put different kind of binary
data like image, video or audio.

### Metadata

`:meta` contain all information about data and media but also on
different information about the user like the geographical location.

### Rule

`:rule` contains default rules about an endpoint. This one is usually
modified with the endpoint. For exemple, if you are using twitter, the
text can't be greater than 280 characters. If the text is greater than
this value, the rule will define the action to do, for exemple, create
another tweet with the remaining content.

### Credential

`:cred` key contains reference to public and private information about
the user and the authentication. This is an anonymous function
executed only during the connection (if the authentication is not
already enabled).

## How to use adaptors?

Actually, we only build a "standard" datastructure to manage multiple
social-network but we don't support authentication or connection. Some
adaptors can be set like `hackney` or `gun` for the connection.

## How to write rules?

Each endpoints have rules, defining how a social network endpoint
manage data on their side.

