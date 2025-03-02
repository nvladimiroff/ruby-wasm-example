require 'pathname'
require 'zeitwerk'
require 'arboriculture'

$ROOT = Pathname.new(__dir__ + '/..')

loader = Zeitwerk::Loader.new
loader.push_dir($ROOT.join('lib').to_s)
loader.push_dir($ROOT.join('app/models').to_s)
loader.inflector.inflect('dom' => 'DOM')
loader.setup

