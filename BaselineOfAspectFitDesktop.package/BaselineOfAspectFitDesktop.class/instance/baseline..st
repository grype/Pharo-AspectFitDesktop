baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec package: #'AspectFitDesktop'.
			spec group: 'default' with: #(#'AspectFitDesktop') ]