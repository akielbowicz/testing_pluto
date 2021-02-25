### A Pluto.jl notebook ###
# v0.12.21

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

# ╔═╡ 2f73dd50-777a-11eb-35c7-fb005ef71bbd
using PlutoUI

# ╔═╡ 39720020-777a-11eb-3496-9d3f03b2f8e3
slider = @bind a Slider(1:10,show_value=true);

# ╔═╡ 5c91da30-777a-11eb-11f7-151771b86274
f(x) = a*x

# ╔═╡ 7ea65ec0-777a-11eb-2847-fdc37bd9b9a7
md"""
Wonders $(slider)
"""

# ╔═╡ 6f58ad10-777a-11eb-28cf-17dd1811b77c
f(1:10)

# ╔═╡ Cell order:
# ╠═2f73dd50-777a-11eb-35c7-fb005ef71bbd
# ╠═39720020-777a-11eb-3496-9d3f03b2f8e3
# ╠═5c91da30-777a-11eb-11f7-151771b86274
# ╠═7ea65ec0-777a-11eb-2847-fdc37bd9b9a7
# ╠═6f58ad10-777a-11eb-28cf-17dd1811b77c
