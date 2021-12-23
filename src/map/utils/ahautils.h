#pragma once


#include "../utils/zoneutils.h"

#include "../../common/kernel.h"
#include "../../common/showmsg.h"
#include "../../common/timer.h"
#include "../../common/utils.h"

#include "../map.h"
//#include "../message.h"
#include "../timetriggers.h"

#include "../entities/charentity.h"
#include "../packets/char.h"
#include "../packets/char_jobs.h"
#include "../packets/char_job_extra.h"
#include "../packets/chat_message.h"
#include "../packets/message_basic.h"
#include "../packets/message_name.h"
#include "../packets/message_special.h"
#include "../packets/message_standard.h"
#include "../packets/message_system.h"
#include "../packets/message_text.h"
#include "../packets/server_ip.h"

#include "../vana_time.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
//#include <ctime>

#include <algorithm>

void ahaInitialize(CCharEntity *PChar);
uint8 ahaGetChannel(CCharEntity *PChar);
uint8 ahaGetSort(CCharEntity *PChar);
void ahaSetSort(CCharEntity *PChar, uint8 sorttype, uint8 channel);
void ahaSetChannel(CCharEntity *PChar, uint8 channel);
bool ahaArgIsNumber(std::string arg);
bool ahaArgIsNumberSpecial(std::string arg);
uint32 ahaFormatNumber(std::string arg);
uint32 ahaArgIsTime(CCharEntity *PChar, uint8 channel, std::string arg);
bool ahaIsInAuctionArea(CCharEntity *PChar);
void ahaLoadList(CCharEntity *PChar, uint8 channel, uint16 page, std::string search, uint8 sort);
void ahaPopulate(CCharEntity *PChar, uint8 channel);
std::string ahaCleanSortName(std::string sortname);
std::string ahaCleanPrice(uint32 price);
std::string ahaGetTimeListed(uint32 time);
void ahaExpireByTime(CCharEntity *PChar, uint8 channel, uint32 seconds, std::string arg);
void ahaExpireByID(CCharEntity *PChar, uint8 channel, uint32 ahid);
void ahaExpireByKeyword(CCharEntity *PChar, uint8 channel, std::string keyword);

