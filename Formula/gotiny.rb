class Gotiny < Formula
    desc "Using gotiny.cc from the command-line"
    homepage "https://github.com/ndthanhdev/gotiny-cli"
    url "https://github.com/ndthanhdev/gotiny-cli/archive/refs/tags/v1.0.7.tar.gz"
    sha256 "ffa95d31c2479df35a0128f5faa91bff0ebb53677fdfd1f82229db29a027cdcd"
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-o", bin/"gotiny"
    end
  
    test do
      system bin/"gotiny", "--version"
    end
  end
  