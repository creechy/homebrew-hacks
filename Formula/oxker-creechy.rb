class OxkerCreechy < Formula
  desc "Simple tui to view & control docker containers"
  homepage "https://github.com/creechy/oxker"
  url "https://github.com/creechy/oxker/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "3ddd9d75798ce6c62eb5fea8de227ee772b7b0645dbc04eab2e7bf4aa7d310c4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test oxker-creechy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
