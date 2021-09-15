require "csv"

require_relative "dataset"
require_relative "tar-gz-readable"

module Datasets
  class KyotoArticles < Dataset
    include TarGzReadable


    def initialize
      super()
      @metadata.id = "kyoto-articles"
      @metadata.name = "Japanese-English Bilingual Corpus of Wikipedia's Kyoto Articles"
      @metadata.url = "https://alaginrc.nict.go.jp/WikiCorpus/index.html"
      @metadata.licenses = ["CC-BY-SA-3.0"]
      @metadata.description = "The National Institute of Information and Communications Technology (NICT) has created this corpus by manually translating Japanese Wikipedia articles (related to Kyoto) into English."
    end

    private
    def open_data
      data_path = cache_dir_path + "wiki_corpus_2.01.tar.gz"
      unless data_path.exist?
        data_url = "https://alaginrc.nict.go.jp/WikiCorpus/cgi-bin/dl1.cgi"
        download(data_path, data_url)
      end
    end



  end
end
