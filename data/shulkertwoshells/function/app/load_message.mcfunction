#> shulkertwoshells:app/load_message
# Called on load

tellraw @a [\
  "",\
  {\
    text: "[",\
    color: "#aaaaaa"\
  },\
  {\
    text: "Shulkers Drop Two Shells",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "shulkertwoshells:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/two-shulker-shells-drop/"\
    }\
  },\
  {\
    text: "]",\
    color: "#aaaaaa",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "shulkertwoshells:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/two-shulker-shells-drop/"\
    }\
  },\
  {\
    text: " loaded! ",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "shulkertwoshells:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/two-shulker-shells-drop/"\
    }\
  },\
  {\
    text: "hover for more info",\
    color: "#929796",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "shulkertwoshells:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/two-shulker-shells-drop/"\
    }\
  }\
]