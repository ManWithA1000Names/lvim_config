local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local d = ls.dynamic_node
local f = ls.function_node
local i = ls.insert_node
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local function Capitalize(string)
	return string:gsub("^%l", string.upper)
end

local function TypeScriptToObject(index, force)
	return f(function(arg)
		if arg[1][1]:match("}") or force then
			return arg[1][1]:gsub(": ?[a-zA-Z%[%]%(%)%=%<%>%. ]+;?,?", ","):gsub(";", ",")
		end
		return "props"
	end, { index })
end

local function cap(index)
	return f(function(arg)
		return Capitalize(arg[1][1])
	end, { index })
end

local function fn()
	return f(function(_, snip)
		return snip.env.TM_FILENAME
	end, {})
end

local function fnc()
	return f(function(_, snip)
		local parts = vim.split(snip.env.TM_FILENAME, ".", true)
		return Capitalize(parts[1])
	end, {})
end

-- snippets

local useState = s("us", fmt([[const [{}, set{}] = useState({});]], { i(1), cap(1), i(2) }))

local one_line_component = s(
	"1lc",
	fmt(
		[[
const {}: React.FC<{}> = ({}) => (
  {}
)
]],
		{ i(1), i(2), TypeScriptToObject(2), i(0) }
	)
)

local FullPageComponent = s(
	"fpc",
	fmt(
		[[
import React from "react";

interface {}Props {{
  {}
}};

export const {}: React.FC<{}Props> = ({{{}}}) => {{
  {}
  return (
    <div>Hello from {}</div>
  );
}};

export default {};
]],
		{ fnc(), i(1), fnc(), fnc(), TypeScriptToObject(1, true), i(0), fnc(), fnc() }
	)
)
-- languages

local lua = {}

local javascript = {
	useState,
}

local typescript = {
	useState,
}

local typescriptreact = {
	useState,
	one_line_component,
	FullPageComponent,
}

-- initalized snippets

ls.snippets = {
	lua = lua,
	javascript = javascript,
	typescript = typescript,
	typescriptreact = typescriptreact,
}
