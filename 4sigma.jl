using Plots
using Distributions

σ = 1.0          # shared standard deviation
μ1, μ2 = -2σ, 2σ # 4σ separation between means

dist1 = Normal(μ1, σ)
dist2 = Normal(μ2, σ)

x = range(μ1 - 4σ, μ2 + 4σ, length=500)

plot(x, pdf.(dist1, x), label="μ = $μ1", lw=2, fill=(0, 0.2))
plot!(x, pdf.(dist2, x), label="μ = $μ2", lw=2, fill=(0, 0.2))
xlabel!("x")
ylabel!("Density")

savefig("4sigma.pdf")
