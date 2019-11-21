{ stdenv, neovim }: 

stdenv.mkDerivation 
{ name = "theNerd247-neovim";
  buildInputs = [ neovim ];
}
