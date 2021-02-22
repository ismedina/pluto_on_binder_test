### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 5f8f4298-7501-11eb-3b7d-f77a5eb255d9
begin
	using Plots
	using PlutoUI
end

# ╔═╡ 6cee40f6-7501-11eb-0633-018299c7cd2f
xs = 0:0.01:1

# ╔═╡ da06ab56-7501-11eb-0349-610f63620cf3
@bind x Slider(xs, show_value=true)

# ╔═╡ ef008ff4-7501-11eb-1c23-6d18a9528e7f
begin
	f(x) = sin(2*pi*x)
	plot(xs, f.(xs))
	scatter!([x], [f(x)])
end

# ╔═╡ Cell order:
# ╠═5f8f4298-7501-11eb-3b7d-f77a5eb255d9
# ╠═6cee40f6-7501-11eb-0633-018299c7cd2f
# ╠═da06ab56-7501-11eb-0349-610f63620cf3
# ╠═ef008ff4-7501-11eb-1c23-6d18a9528e7f
