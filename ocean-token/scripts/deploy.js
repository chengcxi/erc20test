const hre = require("hardhat");

async function main() {
  const TTC = await hre.ethers.getContractFactory("TTC");
  const ttc = await TTC.deploy(100000000, 50);

  await ttc.deployed();

  console.log("TTC deployed: ", ttc.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
