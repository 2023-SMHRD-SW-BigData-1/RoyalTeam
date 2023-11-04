package com.cmmn.converter;

import java.io.IOException;

public abstract class ImageConverter<F, S> {
	
	public abstract S convert(F f) throws IOException;
}
