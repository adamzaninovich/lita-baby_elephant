module Lita
  module Handlers
    class BabyElephant < Handler
      route /\bbaby? ?e(lephant)?s?( me)?\b/i, :baby_elephant

      def baby_elephant response
        elepics = ReadIt.sub('babyelephants').recent_images
        elegifs = ReadIt.sub('babyelephantgifs').recent_images
        response.reply (elepics + elegifs).sample.image
      end
    end

    Lita.register_handler(BabyElephant)
  end
end
