package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class GenericMultipleBarcodeReader implements MultipleBarcodeReader {
    private static final int MAX_DEPTH = 4;
    private static final int MIN_DIMENSION_TO_RECUR = 100;
    private final Reader delegate;

    public GenericMultipleBarcodeReader(Reader reader) {
        this.delegate = reader;
    }

    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        doDecodeMultiple(binaryBitmap, map, arrayList, 0, 0, 0);
        if (!arrayList.isEmpty()) {
            return (Result[]) arrayList.toArray(new Result[arrayList.size()]);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void doDecodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, List<Result> list, int i, int i2, int i3) {
        boolean z;
        float f;
        float f2;
        float f3;
        float f4;
        if (i3 <= 4) {
            try {
                Result decode = this.delegate.decode(binaryBitmap, map);
                Iterator it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((Result) it.next()).getText().equals(decode.getText())) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    list.add(translateResultPoints(decode, i, i2));
                }
                ResultPoint[] resultPoints = decode.getResultPoints();
                if (resultPoints != null && resultPoints.length != 0) {
                    int width = binaryBitmap.getWidth();
                    int height = binaryBitmap.getHeight();
                    float f5 = (float) width;
                    float f6 = (float) height;
                    float f7 = 0.0f;
                    float f8 = 0.0f;
                    int length = resultPoints.length;
                    int i4 = 0;
                    while (i4 < length) {
                        ResultPoint resultPoint = resultPoints[i4];
                        if (resultPoint != null) {
                            float x = resultPoint.getX();
                            f = resultPoint.getY();
                            if (x < f5) {
                                f3 = x;
                            } else {
                                f3 = f5;
                            }
                            if (f < f6) {
                                f2 = f;
                            } else {
                                f2 = f6;
                            }
                            if (x > f7) {
                                f4 = x;
                            } else {
                                f4 = f7;
                            }
                            if (f <= f8) {
                                f = f8;
                            }
                        } else {
                            f = f8;
                            f2 = f6;
                            f3 = f5;
                            f4 = f7;
                        }
                        i4++;
                        f8 = f;
                        f7 = f4;
                        f6 = f2;
                        f5 = f3;
                    }
                    if (f5 > 100.0f) {
                        Map<DecodeHintType, ?> map2 = map;
                        List<Result> list2 = list;
                        int i5 = i;
                        int i6 = i2;
                        doDecodeMultiple(binaryBitmap.crop(0, 0, (int) f5, height), map2, list2, i5, i6, i3 + 1);
                    }
                    if (f6 > 100.0f) {
                        Map<DecodeHintType, ?> map3 = map;
                        List<Result> list3 = list;
                        int i7 = i;
                        int i8 = i2;
                        doDecodeMultiple(binaryBitmap.crop(0, 0, width, (int) f6), map3, list3, i7, i8, i3 + 1);
                    }
                    if (f7 < ((float) (width - 100))) {
                        Map<DecodeHintType, ?> map4 = map;
                        List<Result> list4 = list;
                        int i9 = i2;
                        doDecodeMultiple(binaryBitmap.crop((int) f7, 0, width - ((int) f7), height), map4, list4, i + ((int) f7), i9, i3 + 1);
                    }
                    if (f8 < ((float) (height - 100))) {
                        Map<DecodeHintType, ?> map5 = map;
                        List<Result> list5 = list;
                        int i10 = i;
                        doDecodeMultiple(binaryBitmap.crop(0, (int) f8, width, height - ((int) f8)), map5, list5, i10, i2 + ((int) f8), i3 + 1);
                    }
                }
            } catch (ReaderException e) {
            }
        }
    }

    private static Result translateResultPoints(Result result, int i, int i2) {
        ResultPoint[] resultPoints = result.getResultPoints();
        if (resultPoints == null) {
            return result;
        }
        ResultPoint[] resultPointArr = new ResultPoint[resultPoints.length];
        for (int i3 = 0; i3 < resultPoints.length; i3++) {
            ResultPoint resultPoint = resultPoints[i3];
            if (resultPoint != null) {
                resultPointArr[i3] = new ResultPoint(resultPoint.getX() + ((float) i), resultPoint.getY() + ((float) i2));
            }
        }
        Result result2 = new Result(result.getText(), result.getRawBytes(), result.getNumBits(), resultPointArr, result.getBarcodeFormat(), result.getTimestamp());
        result2.putAllMetadata(result.getResultMetadata());
        return result2;
    }
}
