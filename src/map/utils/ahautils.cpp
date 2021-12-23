/*
===========================================================================

This file is part of Tonberry source code.

===========================================================================
*/

#include "ahautils.h"

void ahaInitialize(CCharEntity *PChar) // make sure we have a SQL entry
{

	const char* fmtQuery = "SELECT * FROM aha_settings WHERE charid = %u LIMIT 1;";

	int32 ret = Sql_Query(SqlHandle, fmtQuery, PChar->id);

	if (ret == SQL_ERROR)
	{
		ShowError("ahaInitialize SELECT ERROR for char %u\n", PChar->id);
		return;
	}

	if (Sql_NumRows(SqlHandle) != 0) // we have an entry already
	{
		return;
	}

	const char* fmtQuery2 = "INSERT INTO aha_settings VALUES (%u,1,29);";

	ret = Sql_Query(SqlHandle, fmtQuery2, PChar->id);

	if (ret == SQL_ERROR)
	{
		ShowError("ahaInitialize INSERT ERROR for char %u\n", PChar->id);
	}

	return;
}

uint8 ahaGetChannel(CCharEntity *PChar)
{

	const char* fmtQuery = "SELECT channel FROM aha_settings WHERE charid = %u LIMIT 1;";

	int32 ret = Sql_Query(SqlHandle, fmtQuery, PChar->id);

	if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0 && Sql_NextRow(SqlHandle) == SQL_SUCCESS)
	{
		return Sql_GetUIntData(SqlHandle, 0);
	}
	else
	{
		ShowError("ahaGetChannel SELECT ERROR for char %u\n", PChar->id);
	}
	return 29; // return the default channel, SYSTEM

}

uint8 ahaGetSort(CCharEntity *PChar)
{

	const char* fmtQuery = "SELECT sort FROM aha_settings WHERE charid = %u LIMIT 1;";

	int32 ret = Sql_Query(SqlHandle, fmtQuery, PChar->id);

	if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0 && Sql_NextRow(SqlHandle) == SQL_SUCCESS)
	{
		return Sql_GetUIntData(SqlHandle, 0);
	}
	else
	{
		ShowError("ahaGetSort SELECT ERROR for char %u\n", PChar->id);
	}
	return 1; // return the default sort type, TIME

}

void ahaSetSort(CCharEntity *PChar, uint8 sorttype, uint8 channel)
{

	const char* fmtQuery = "UPDATE aha_settings SET sort = %u WHERE charid = %u";

	int32 ret = Sql_Query(SqlHandle, fmtQuery, sorttype, PChar->id);

	if (ret == SQL_ERROR)
	{
		ShowError("ahaSetSort UPDATE ERROR for char %u\n", PChar->id);
	}
	else
	{
		std::string line;
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE ==", ""));
		line = "Sort type set to: ";
		if (sorttype == 1) { line += "TIME (DEFAULT)"; }
		if (sorttype == 2) { line += "TIMEREV"; }
		if (sorttype == 3) { line += "PRICE"; }
		if (sorttype == 4) { line += "PRICEREV"; }
		if (sorttype == 5) { line += "NAME"; }
		if (sorttype == 6) { line += "NAMEREV"; }
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}

	return;

}

void ahaSetChannel(CCharEntity *PChar, uint8 channel)
{

	const char* fmtQuery = "UPDATE aha_settings SET channel = %u WHERE charid = %u";

	int32 ret = Sql_Query(SqlHandle, fmtQuery, channel, PChar->id);

	if (ret == SQL_ERROR)
	{
		ShowError("ahaSetChannel UPDATE ERROR for char %u\n", PChar->id);
	}
	else
	{
		std::string line;
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE ==", ""));
		line = "Channel set to: ";
		if (channel == 13) { line += "SAY"; }
		if (channel == 14) { line += "SHOUT"; }
		if (channel == 15) { line += "PARTY"; }
		if (channel == 16) { line += "LS1"; }
		if (channel == 28) { line += "LS2"; }
		if (channel == 29) { line += "SYSTEM (DEFAULT)"; }
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}

	return;

}

bool ahaArgIsNumber(std::string arg)
{
	bool result = true;

	uint8 c = 0;

	while (arg[c] != '\0' && result == true)
	{
		if (arg[c] != '0' && arg[c] != '1' && arg[c] != '2' && arg[c] != '3' && arg[c] != '4' && arg[c] != '5' && arg[c] != '6' && arg[c] != '7' && arg[c] != '8' && arg[c] != '9')
		{
			result = false;
		}
		c++;
	}

	return result;

}

bool ahaArgIsNumberSpecial(std::string arg) // allows the # at the start (if the player puts it there for id number)
{
	bool result = true;

	uint8 c = 0;
	if (arg[c] == '#') { c++; }

	while (arg[c] != '\0' && result == true)
	{
		if (arg[c] != '0' && arg[c] != '1' && arg[c] != '2' && arg[c] != '3' && arg[c] != '4' && arg[c] != '5' && arg[c] != '6' && arg[c] != '7' && arg[c] != '8' && arg[c] != '9')
		{
			result = false;
		}
		c++;
	}

	return result;

}

uint32 ahaFormatNumber(std::string arg) // shift left one character, dropping the # in front, if exists
{

	if (arg[0] == '#') // exists
	{
		int8 c = 0;
		while (arg[c] != '\0') { c++; } // count string length
		int8 a = 0;
		while (a < c) { arg[a] = arg[a + 1]; a++; } // shift
	}

	return std::stoi(arg);

}

uint32 ahaArgIsTime(CCharEntity *PChar, uint8 channel, std::string arg)
{

	int8 c = 0;
	while (arg[c] != '\0') { c++; } // count string length
	uint8 length = c;
	if (length < 2) { return 0; } // must be 2,3 or 4 chars long
	c--;

	uint8 type = 0;
	if (arg[c] == 'm') { type = 1; }
	else if (arg[c] == 'h') { type = 2; }
	else if (arg[c] == 'd') { type = 3; }
	else { return 0; }
	c--;

	if (type == 1 && length > 3) { return 0; } // m must be 1 or 2 digits
	if (type == 2 && length > 3) { return 0; } // h must be 1 or 2 digits
	if (type == 3 && length > 4) { return 0; } // d can be 3 digits for days
	
	while (c > -1)
	{
		if (arg[c] != '0' && arg[c] != '1' && arg[c] != '2' && arg[c] != '3' && arg[c] != '4' && arg[c] != '5' && arg[c] != '6' && arg[c] != '7' && arg[c] != '8' && arg[c] != '9') { return 0; }
		c--;
	}
	
	if (length == 4) { arg[3] = '\0'; } // we already know the type, get rid of the letter
	if (length == 3) { arg[2] = '\0'; }
	if (length == 2) { arg[1] = '\0'; }

	uint32 time = std::stoi(arg);

	if ( (time == 0) || (type == 1 && time > 59) || (type == 2 && time > 23) || (type == 3 && time > 364) )
	{
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE (ERROR) ==", ""));
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "Invalid expire age! Must be one of:", ""));
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "1m ~ 59m or 1h ~ 23h or 1d ~ 364d.", ""));
		return 7;
	}

	time = time * 60;
	if (type == 2) { time = time * 60; }
	if (type == 3) { time = time * 60 * 24; }

	return time;
	
}

bool ahaIsInAuctionArea(CCharEntity *PChar)
{
	uint16 z = PChar->loc.zone->GetID();
	
	if (z == ZONE_BASTOK_MINES ||
		z == ZONE_BASTOK_MARKETS ||
		z == ZONE_NORG ||
		z == ZONE_SOUTHERN_SANDORIA ||
		z == ZONE_PORT_SANDORIA ||
		z == ZONE_RABAO ||
		z == ZONE_WINDURST_WOODS ||
		z == ZONE_WINDURST_WALLS ||
		z == ZONE_KAZHAM ||
		z == ZONE_LOWER_JEUNO ||
		z == ZONE_RULUDE_GARDENS ||
		z == ZONE_PORT_JEUNO ||
		z == ZONE_UPPER_JEUNO ||
		z == ZONE_AHT_URHGAN_WHITEGATE ||
		z == ZONE_AL_ZAHBI ||
		z == ZONE_NASHMAU ||
		z == ZONE_TAVNAZIAN_SAFEHOLD)
	{
		return true;
	}

	return false;
}

void ahaLoadList(CCharEntity *PChar, uint8 channel, uint16 page, std::string search, uint8 sort)
{

	std::string line;
	int32 ret;

	std::string fmtQuery1 = "SELECT T1.id, T1.price, T2.sortname, T1.stack, T2.stackSize, T1.date FROM dspdb.auction_house T1 INNER JOIN item_basic T2 ON T1.itemid = T2.itemid WHERE T1.buyer_name IS NULL AND seller = "; fmtQuery1 += std::to_string(PChar->id); fmtQuery1 += " AND T2.sortname LIKE '%"; fmtQuery1 += search; fmtQuery1 += "%' ORDER BY T1.date DESC;";
	std::string fmtQuery2 = "SELECT T1.id, T1.price, T2.sortname, T1.stack, T2.stackSize, T1.date FROM dspdb.auction_house T1 INNER JOIN item_basic T2 ON T1.itemid = T2.itemid WHERE T1.buyer_name IS NULL AND seller = "; fmtQuery2 += std::to_string(PChar->id); fmtQuery2 += " AND T2.sortname LIKE '%"; fmtQuery2 += search; fmtQuery2 += "%' ORDER BY T1.date ASC;";
	std::string fmtQuery3 = "SELECT T1.id, T1.price, T2.sortname, T1.stack, T2.stackSize, T1.date FROM dspdb.auction_house T1 INNER JOIN item_basic T2 ON T1.itemid = T2.itemid WHERE T1.buyer_name IS NULL AND seller = "; fmtQuery3 += std::to_string(PChar->id); fmtQuery3 += " AND T2.sortname LIKE '%"; fmtQuery3 += search; fmtQuery3 += "%' ORDER BY T1.price DESC, T1.date DESC;";
	std::string fmtQuery4 = "SELECT T1.id, T1.price, T2.sortname, T1.stack, T2.stackSize, T1.date FROM dspdb.auction_house T1 INNER JOIN item_basic T2 ON T1.itemid = T2.itemid WHERE T1.buyer_name IS NULL AND seller = "; fmtQuery4 += std::to_string(PChar->id); fmtQuery4 += " AND T2.sortname LIKE '%"; fmtQuery4 += search; fmtQuery4 += "%' ORDER BY T1.price ASC, T1.date DESC;";
	std::string fmtQuery5 = "SELECT T1.id, T1.price, T2.sortname, T1.stack, T2.stackSize, T1.date FROM dspdb.auction_house T1 INNER JOIN item_basic T2 ON T1.itemid = T2.itemid WHERE T1.buyer_name IS NULL AND seller = "; fmtQuery5 += std::to_string(PChar->id); fmtQuery5 += " AND T2.sortname LIKE '%"; fmtQuery5 += search; fmtQuery5 += "%' ORDER BY T2.sortname ASC, T1.date DESC;";
	std::string fmtQuery6 = "SELECT T1.id, T1.price, T2.sortname, T1.stack, T2.stackSize, T1.date FROM dspdb.auction_house T1 INNER JOIN item_basic T2 ON T1.itemid = T2.itemid WHERE T1.buyer_name IS NULL AND seller = "; fmtQuery6 += std::to_string(PChar->id); fmtQuery6 += " AND T2.sortname LIKE '%"; fmtQuery6 += search; fmtQuery6 += "%' ORDER BY T2.sortname DESC, T1.date DESC;";
	
	if (sort == 1) { ret = Sql_QueryStr(SqlHandle, (const char*)fmtQuery1.c_str()); }
	if (sort == 2) { ret = Sql_QueryStr(SqlHandle, (const char*)fmtQuery2.c_str()); }
	if (sort == 3) { ret = Sql_QueryStr(SqlHandle, (const char*)fmtQuery3.c_str()); }
	if (sort == 4) { ret = Sql_QueryStr(SqlHandle, (const char*)fmtQuery4.c_str()); }
	if (sort == 5) { ret = Sql_QueryStr(SqlHandle, (const char*)fmtQuery5.c_str()); }
	if (sort == 6) { ret = Sql_QueryStr(SqlHandle, (const char*)fmtQuery6.c_str()); }

	

	if (ret == SQL_ERROR)
	{
		ShowError("ahaLoadList SELECT ERROR for char %u\n",PChar->id);
		return;
	}
	
	int32 count = (int32)Sql_NumRows(SqlHandle);
	uint16 maxpage = 1 + ((count - 1) / 30);
	
	if (page > maxpage || page == 0)
	{
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE (ERROR) ==", ""));
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "Specified page number is out of range.", ""));
		line = "You have "; line += std::to_string(maxpage); line += " page"; if (maxpage > 1) { line += "s"; } line += " of listings for this query.";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
		return;
	}
	
	uint16 c = (page - 1) * 30;
	
	while (c != 0)
	{
		Sql_NextRow(SqlHandle);
		c--;
	}
	
	std::string headerText;
	headerText = "              AH LISTINGS: PG ";
	headerText += std::to_string(page) + " / " + std::to_string(maxpage);
	PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, headerText, ""));
	PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "=============================================", ""));
	ahaPopulate(PChar, channel);
	PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "=============================================", ""));
	
	return;
}

void ahaPopulate(CCharEntity *PChar, uint8 channel)
{

	std::string line;

	uint32 id;
	uint32 price;
	std::string sortname;
	bool stack;
	uint8 stackSize;
	uint32 date;
	uint8 rowsdone = 0;

	while (Sql_NextRow(SqlHandle) == SQL_SUCCESS && rowsdone < 30)
	{
		id = Sql_GetUIntData(SqlHandle, 0);
		price = Sql_GetUIntData(SqlHandle, 1);
		sortname = (const char*)(Sql_GetData(SqlHandle, 2));
		stack = Sql_GetUIntData(SqlHandle, 3);
		stackSize = Sql_GetUIntData(SqlHandle, 4);
		date = Sql_GetUIntData(SqlHandle, 5);

		line = " x";
		if (stack) { line += std::to_string(stackSize); }
		else { line += "01"; }
		line += "  ";
		line += ahaCleanSortName(sortname);
		line += " - ";
		line += ahaCleanPrice(price);
		line += "g [";
		line += ahaGetTimeListed(date);
		line += "] - (#";
		line += std::to_string(id);
		line += ")";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
		rowsdone++;
	}

	return;

}

std::string ahaCleanSortName(std::string sortname)
{

	uint8 c = 0;
	bool wordStart = true;

	while (sortname[c] != '\0')
	{
		if (wordStart) { sortname[c] = std::toupper(sortname[c]); wordStart = false; }
		else if (sortname[c] == '_') { sortname[c] = ' '; wordStart = true; }
		c++;
	}

	return sortname;

}

std::string ahaCleanPrice(uint32 price)
{

	std::string strprice = std::to_string(price);
	char output[12];
	uint8 c = 0;

	while (strprice[c] != '\0') { c++; } // count string length

	// "0" : c == 1
	// "10" : c == 2

	if (c <= 3)
	{
		return strprice;
	}
	if (c == 4)
	{
		output[0] = strprice[0];
		output[1] = ',';
		output[2] = strprice[1];
		output[3] = strprice[2];
		output[4] = strprice[3];
		output[5] = '\0';
	}
	if (c == 5)
	{
		output[0] = strprice[0];
		output[1] = strprice[1];
		output[2] = ',';
		output[3] = strprice[2];
		output[4] = strprice[3];
		output[5] = strprice[4];
		output[6] = '\0';
	}
	if (c == 6)
	{
		output[0] = strprice[0];
		output[1] = strprice[1];
		output[2] = strprice[2];
		output[3] = ',';
		output[4] = strprice[3];
		output[5] = strprice[4];
		output[6] = strprice[5];
		output[7] = '\0';
	}
	if (c == 7)
	{
		output[0] = strprice[0];
		output[1] = ',';
		output[2] = strprice[1];
		output[3] = strprice[2];
		output[4] = strprice[3];
		output[5] = ',';
		output[6] = strprice[4];
		output[7] = strprice[5];
		output[8] = strprice[6];
		output[9] = '\0';
	}
	if (c == 8)
	{
		output[0] = strprice[0];
		output[1] = strprice[1];
		output[2] = ',';
		output[3] = strprice[2];
		output[4] = strprice[3];
		output[5] = strprice[4];
		output[6] = ',';
		output[7] = strprice[5];
		output[8] = strprice[6];
		output[9] = strprice[7];
		output[10] = '\0';
	}
	if (c == 9)
	{
		output[0] = strprice[0];
		output[1] = strprice[1];
		output[2] = strprice[2];
		output[3] = ',';
		output[4] = strprice[3];
		output[5] = strprice[4];
		output[6] = strprice[5];
		output[7] = ',';
		output[8] = strprice[6];
		output[9] = strprice[7];
		output[10] = strprice[8];
		output[11] = '\0';
	}
	
	return (std::string)(output);

}

std::string ahaGetTimeListed(uint32 time)
{

	uint32 elapsed = (uint32)(CVanaTime::getInstance()->getVanaTime() + 1009810800) - time;

	if (elapsed >= 31536000) // 1y or more
	{
		return std::to_string(elapsed / 31536000) + "y";
	}

	if (elapsed >= 86400 && elapsed < 31536000) // more than 1d, less than 365d
	{
		return std::to_string(elapsed / 86400) + "d";
	}

	if (elapsed >= 3600 && elapsed < 86400) // more than 1h, less than 24h
	{
		return std::to_string(elapsed / 3600) + "h";
	}

	if (elapsed >= 60 && elapsed < 3600) // more than 1m, less than 60m
	{
		return std::to_string(elapsed / 60) + "m";
	}

	if (elapsed < 60) // less than 60s
	{
		return std::to_string(elapsed) + "s";
	}

	return "ERROR";
}

void ahaExpireByTime(CCharEntity *PChar, uint8 channel, uint32 seconds, std::string arg)
{

	uint32 timepoint = (uint32)(CVanaTime::getInstance()->getVanaTime() + 1009810800) - seconds;
	std::string line;

	Sql_t* sqlH2 = Sql_Malloc();
	Sql_Connect(sqlH2, map_config.mysql_login.c_str(),
		map_config.mysql_password.c_str(),
		map_config.mysql_host.c_str(),
		map_config.mysql_port,
		map_config.mysql_database.c_str());

	std::string qStr = "SELECT T0.id,T0.itemid,T1.stacksize, T0.stack, T0.seller FROM auction_house T0 INNER JOIN item_basic T1 ON T0.itemid = T1.itemid WHERE T0.date <= %u AND T0.seller = %u AND buyer_name IS NULL;";
	int32 ret = Sql_Query(SqlHandle, qStr.c_str(), timepoint, PChar->id);
	int64 expiredAuctions = Sql_NumRows(SqlHandle);
	if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0)
	{
		while (Sql_NextRow(SqlHandle) == SQL_SUCCESS)
		{
			// iterate through the expired auctions and return them to the seller
			uint32 saleID = (uint32)Sql_GetUIntData(SqlHandle, 0);
			uint32 itemID = (uint32)Sql_GetUIntData(SqlHandle, 1);
			uint8  itemStack = (uint8)Sql_GetUIntData(SqlHandle, 2);
			uint8 ahStack = (uint8)Sql_GetUIntData(SqlHandle, 3);
			uint32 seller = (uint32)Sql_GetUIntData(SqlHandle, 4);
			ret = Sql_Query(sqlH2, "INSERT INTO delivery_box (charid, charname, box, itemid, itemsubid, quantity, senderid, sender) VALUES "
				"(%u, (select charname from chars where charid=%u), 1, %u, 0, %u, 0, 'AH-Jeuno');", seller, seller, itemID, ahStack == 1 ? itemStack : 1);
			//      ShowMessage(cC2, seller, seller, itemID);
			if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0)
			{
				// delete the item from the auction house
				Sql_Query(sqlH2, "DELETE FROM auction_house WHERE id= %u", saleID);
			}
		}
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE ==", ""));
		line = "Successfully expired "; line += std::to_string(expiredAuctions); line += " listings older than "; line += arg; line += ".";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}
	else if (ret == SQL_ERROR)
	{
		//  ShowMessage(CL_RED"SQL ERROR: %s\n\n" CL_RESET, SQL_ERROR);
	}
	else if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) == 0)
	{
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE (ERROR) ==", ""));
		line = "No listings were expired. None exist older than "; line += arg; line += ".";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}
    Sql_Free(sqlH2);
	return;

}

void ahaExpireByID(CCharEntity *PChar, uint8 channel, uint32 ahid)
{

	std::string line;
	uint8 ahStack;
	uint32 itemID;

	Sql_t* sqlH2 = Sql_Malloc();
	Sql_Connect(sqlH2, map_config.mysql_login.c_str(),
		map_config.mysql_password.c_str(),
		map_config.mysql_host.c_str(),
		map_config.mysql_port,
		map_config.mysql_database.c_str());

	std::string qStr = "SELECT T0.id,T0.itemid,T1.stacksize, T0.stack, T0.seller FROM auction_house T0 INNER JOIN item_basic T1 ON T0.itemid = T1.itemid WHERE T0.id = %u AND T0.seller = %u AND buyer_name IS NULL LIMIT 1;";
	int32 ret = Sql_Query(SqlHandle, qStr.c_str(), ahid, PChar->id);
	int64 expiredAuctions = Sql_NumRows(SqlHandle);
	if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0)
	{
		while (Sql_NextRow(SqlHandle) == SQL_SUCCESS)
		{
			// iterate through the expired auctions and return them to the seller
			uint32 saleID = (uint32)Sql_GetUIntData(SqlHandle, 0);
			itemID = (uint32)Sql_GetUIntData(SqlHandle, 1);
			uint8  itemStack = (uint8)Sql_GetUIntData(SqlHandle, 2);
			ahStack = (uint8)Sql_GetUIntData(SqlHandle, 3);
			uint32 seller = (uint32)Sql_GetUIntData(SqlHandle, 4);
			ret = Sql_Query(sqlH2, "INSERT INTO delivery_box (charid, charname, box, itemid, itemsubid, quantity, senderid, sender) VALUES "
				"(%u, (select charname from chars where charid=%u), 1, %u, 0, %u, 0, 'AH-Jeuno');", seller, seller, itemID, ahStack == 1 ? itemStack : 1);
			//      ShowMessage(cC2, seller, seller, itemID);
			if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0)
			{
				// delete the item from the auction house
				Sql_Query(sqlH2, "DELETE FROM auction_house WHERE id= %u", saleID);
			}
		}
		Sql_Query(SqlHandle, "SELECT sortname, stackSize FROM item_basic WHERE itemid = %u LIMIT 1;", itemID);
		Sql_NextRow(SqlHandle);
		std::string sortname = (const char*)(Sql_GetData(SqlHandle, 0));
		uint16 stackSize = Sql_GetUIntData(SqlHandle, 1);
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE ==", ""));
		line = "Successfully expired listing #"; line += std::to_string(ahid); line += " '"; line += ahaCleanSortName(sortname);
		if (ahStack > 0) { line += " x"; line += std::to_string(stackSize); }
		line += "'.";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}
	else if (ret == SQL_ERROR)
	{
		//  ShowMessage(CL_RED"SQL ERROR: %s\n\n" CL_RESET, SQL_ERROR);
	}
	else if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) == 0)
	{
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE (ERROR) ==", ""));
		line = "Could not expire listing with invalid ID: #"; line += std::to_string(ahid); line += ".";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}
    Sql_Free(sqlH2);
	return;

}

void ahaExpireByKeyword(CCharEntity *PChar, uint8 channel, std::string keyword)
{

	std::string line;

	Sql_t* sqlH2 = Sql_Malloc();
	Sql_Connect(sqlH2, map_config.mysql_login.c_str(),
		map_config.mysql_password.c_str(),
		map_config.mysql_host.c_str(),
		map_config.mysql_port,
		map_config.mysql_database.c_str());

	std::string fmtQuery1 = "SELECT T0.id,T0.itemid,T1.stacksize, T0.stack, T0.seller FROM auction_house T0 INNER JOIN item_basic T1 ON T0.itemid = T1.itemid WHERE T0.buyer_name IS NULL AND T0.seller = "; fmtQuery1 += std::to_string(PChar->id); fmtQuery1 += " AND T1.sortname LIKE '%"; fmtQuery1 += keyword; fmtQuery1 += "%';";
	int32 ret = Sql_QueryStr(SqlHandle, (const char*)(fmtQuery1.c_str()));
	int64 expiredAuctions = Sql_NumRows(SqlHandle);
	if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0)
	{
		while (Sql_NextRow(SqlHandle) == SQL_SUCCESS)
		{
			// iterate through the expired auctions and return them to the seller
			uint32 saleID = (uint32)Sql_GetUIntData(SqlHandle, 0);
			uint32 itemID = (uint32)Sql_GetUIntData(SqlHandle, 1);
			uint8  itemStack = (uint8)Sql_GetUIntData(SqlHandle, 2);
			uint8 ahStack = (uint8)Sql_GetUIntData(SqlHandle, 3);
			uint32 seller = (uint32)Sql_GetUIntData(SqlHandle, 4);
			ret = Sql_Query(sqlH2, "INSERT INTO delivery_box (charid, charname, box, itemid, itemsubid, quantity, senderid, sender) VALUES "
				"(%u, (select charname from chars where charid=%u), 1, %u, 0, %u, 0, 'AH-Jeuno');", seller, seller, itemID, ahStack == 1 ? itemStack : 1);
			//      ShowMessage(cC2, seller, seller, itemID);
			if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) != 0)
			{
				// delete the item from the auction house
				Sql_Query(sqlH2, "DELETE FROM auction_house WHERE id= %u", saleID);
			}
		}
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE ==", ""));
		line = "Successfully expired "; line += std::to_string(expiredAuctions); line += " listings with keyword '"; line += keyword; line += "'.";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}
	else if (ret == SQL_ERROR)
	{
		//  ShowMessage(CL_RED"SQL ERROR: %s\n\n" CL_RESET, SQL_ERROR);
	}
	else if (ret != SQL_ERROR && Sql_NumRows(SqlHandle) == 0)
	{
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, "== AH ASSIST MESSAGE (ERROR) ==", ""));
		line = "No listings were expired. None exist with keyword '"; line += keyword; line += "'.";
		PChar->pushPacket(new CChatMessagePacket(PChar, (CHAT_MESSAGE_TYPE)channel, line, ""));
	}
    Sql_Free(sqlH2);
	return;

}