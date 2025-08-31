final: prev: {
  diagram-as-code = prev.buildGoModule {
    pname = "diagram-as-code";
    version = "0.22";

    src = prev.fetchFromGitHub {
      owner = "awslabs";
      repo = "diagram-as-code";
      rev = "v0.22";
      hash = "sha256-d7GjmvsH6NY1yBS8JYsZYvt8rYeHHbKp0ASw9AQuZvE=";
    };

    vendorHash = "sha256-1yQnjQfOY69lTpPjI9sA9SwdeMx+iAK6QUEVqQOnprY=";
    doCheck = false;
  };
}
