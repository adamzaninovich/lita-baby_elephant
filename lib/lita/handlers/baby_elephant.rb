module Lita
  module Handlers
    class BabyElephant < Handler
      route /\bbaby( )?elephant\b/i, :baby_elephant
      route /\bb(aby)? e(lephant)?( me)?\b/i, :baby_elephant, command: true

      def baby_elephant response
        ele = ReadIt.sub('babyelephants').recent.select(&:image?).sample
        response.reply ele.image
      end
    end

    Lita.register_handler(BabyElephant)
  end
end
