class Verbump < Formula
    desc "A description of your project"
    homepage "https://github.com/iamd3vil/verbump"
    version "0.2.3"
    url "https://github.com/iamd3vil/verbump/releases/download/v#{version}/verbump-darwin-aarch64.zip"
    sha256 "eb6b752e2e4e4d0ec14517e192057eada5967368b4ceb1442b316ddc1fc68ce0"

    depends_on arch: :arm64

    def install
        bin.install "verbump_aarch64-apple-darwin" => "verbump"
    end

    test do
        system "#{bin}/verbump", "--version"
    end
end
