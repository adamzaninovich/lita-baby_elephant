module Lita
  module Handlers
    class BabyElephant < Handler
      route /\bb(aby)? e(lephant)?( me)?\b/i, :baby_elephant

      def baby_elephant response
        ele = ReadIt.sub('babyelephants').recent.select(&:image?).sample
        response.reply ele.image
      end
    end

    Lita.register_handler(BabyElephant)
  end
end
