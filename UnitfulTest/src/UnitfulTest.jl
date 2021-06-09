module UnitfulTest

import Unitful

xs = zeros(1)
function run()
  xs * Unitful.mg / (100 * Unitful.mL)
end

end