package com.hawks.thunder.thunderhawks.modules.utils;

import java.sql.Timestamp;
import java.time.ZonedDateTime;

import org.springframework.stereotype.Component;

@Component
public class TimeUtil {
	public static Timestamp getCurrentTimestamp() {
		return Timestamp.valueOf(ZonedDateTime.now().toLocalDateTime());
	}
}
