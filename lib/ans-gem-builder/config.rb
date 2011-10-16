# vi: set fileencoding=utf-8

module Ans::Gem::Builder::Config
  def gem_host
    "gem.host.domain"
  end
  def gem_root
    "/path/to/gem/root"
  end
  def remote_rvm_path
    "/usr/local/rvm"
  end
  def remote_ruby_version
    "1.9.2"
  end
end
