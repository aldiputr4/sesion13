function split(A0_1, A1_2)
  local L2_3, L3_4, L4_5
  L2_3 = 1
  L3_4 = 1
  L4_5 = {}
  while true do
    if not string.find(A0_1, A1_2, L2_3) then
      L4_5[L3_4] = string.sub(A0_1, L2_3, string.len(A0_1))
      break
    end--Ꮲsᴀʏᴄʜᴏ⸙
    L4_5[L3_4] = string.sub(A0_1, L2_3, string.find(A0_1, A1_2, L2_3) - 1)
    L2_3 = string.find(A0_1, A1_2, L2_3) + string.len(A1_2)
    L3_4 = L3_4 + 1
  end--Ꮲsᴀʏᴄʜᴏ⸙
  return L4_5
end--Ꮲsᴀʏᴄʜᴏ⸙

function xgxc(A0_6, A1_7)
  local L2_8, L3_9, L4_10, L5_11
  L2_8 = 1
  L3_9 = #A1_7
  for i = 1, #A1_7 do
    xgpy = A0_6 + A1_7[i].offset
    xglx = A1_7[i].type
    xgsz = A1_7[i].value
    gg.setValues({
      [1] = {
        address = xgpy,
        flags = xglx,
        value = xgsz
      }
    })
    xgsl = xgsl + 1
  end--Ꮲsᴀʏᴄʜᴏ⸙
end--Ꮲsᴀʏᴄʜᴏ⸙
function sosna(A0_12)
  gg.clearResults()
  gg.setRanges(A0_12[1].memory)
  gg.searchNumber(A0_12[3].value, A0_12[3].type)
  if gg.getResultCount() == 0 then
    gg.toast(A0_12[2].name .. "Faild")
  else
    gg.refineNumber(A0_12[3].value, A0_12[3].type)
    gg.refineNumber(A0_12[3].value, A0_12[3].type)
    gg.refineNumber(A0_12[3].value, A0_12[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(A0_12[2].name .. "Faild")
    else
      sl = gg.getResults(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end--Ꮲsᴀʏᴄʜᴏ⸙
      for i = 1, sz do
        pdsz = true
        for i = 4, #A0_12 do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[i].address + A0_12[i].offset
            pysz[1].flags = A0_12[i].type
            szpy = gg.getValues(pysz)
            pdpd = A0_12[i].lv .. ";" .. szpy[1].value
            szpd = split(pdpd, ";")
            tzszpd = szpd[1]
            pyszpd = szpd[2]
            if tzszpd == pyszpd then
              pdjg = true
              pdsz = true
            else
              pdjg = false
              pdsz = false
            end--Ꮲsᴀʏᴄʜᴏ⸙
          end--Ꮲsᴀʏᴄʜᴏ⸙
        end--Ꮲsᴀʏᴄʜᴏ⸙
        if pdjg == true then
          szpy = sl[i].address
          xgxc(szpy, sosnaaa)
          xgjg = true
        end--Ꮲsᴀʏᴄʜᴏ⸙
      end--Ꮲsᴀʏᴄʜᴏ⸙
      if xgjg == true then
      else
      end--Ꮲsᴀʏᴄʜᴏ⸙
    end--Ꮲsᴀʏᴄʜᴏ⸙
  end--Ꮲsᴀʏᴄʜᴏ⸙
end--Ꮲsᴀʏᴄʜᴏ⸙

function BP()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("67109633", gg.TYPE_DWORD)
  gg.getResults(50000)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
  os.remove("/storage/emulated/0/tencent")
  os.remove("/storage/emulated/0/MidasOverse")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.alert("🚫 Antiban not activated 🚫\nTry again....")
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    for i = 1, n do
      gg.addListItems({
        [1] = {
          address = jz[i].address - 252,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 236,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 232,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 72,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 68,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 64,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 30,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 130,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 180,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 200,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 300,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 310,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 360,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 450,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 650,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 800,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.clearResults()
      gg.alert("🛡️ Antiban Activated ✓ 🛡")
    end--Ꮲsᴀʏᴄʜᴏ⸙
  end--Ꮲsᴀʏᴄʜᴏ⸙
end--Ꮲsᴀʏᴄʜᴏ⸙

function startBypass()
  gg.setVisible(false)
  bypassAlert = gg.alert("вуραѕѕ", "ᴺᴼ", "ᴼᴷ") if bypassAlert == 2 then BP() end
end
startBypass()
