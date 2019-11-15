package cn.bingoogolapple.qrcode.core;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;

public class ScanBoxView extends View {
    private int mAnimDelayTime;
    private int mAnimTime;
    private String mBarCodeTipText;
    private int mBarcodeRectHeight;
    private int mBorderColor;
    private int mBorderSize;
    private int mCornerColor;
    private int mCornerLength;
    private int mCornerSize;
    private Drawable mCustomGridScanLineDrawable;
    private Drawable mCustomScanLineDrawable;
    private Rect mFramingRect;
    private Bitmap mGridScanLineBitmap;
    private float mGridScanLineBottom;
    private float mGridScanLineRight;
    private float mHalfCornerSize;
    private boolean mIsBarcode;
    private boolean mIsCenterVertical;
    private boolean mIsOnlyDecodeScanBoxArea;
    private boolean mIsScanLineReverse;
    private boolean mIsShowDefaultGridScanLineDrawable;
    private boolean mIsShowDefaultScanLineDrawable;
    private boolean mIsShowTipBackground;
    private boolean mIsShowTipTextAsSingleLine;
    private boolean mIsTipTextBelowRect;
    private int mMaskColor;
    private int mMoveStepDistance;
    private Bitmap mOriginBarCodeGridScanLineBitmap;
    private Bitmap mOriginBarCodeScanLineBitmap;
    private Bitmap mOriginQRCodeGridScanLineBitmap;
    private Bitmap mOriginQRCodeScanLineBitmap;
    private Paint mPaint = new Paint();
    private String mQRCodeTipText;
    private int mRectHeight;
    private int mRectWidth;
    private Bitmap mScanLineBitmap;
    private int mScanLineColor;
    private float mScanLineLeft;
    private int mScanLineMargin;
    private int mScanLineSize;
    private float mScanLineTop;
    private int mTipBackgroundColor;
    private int mTipBackgroundRadius;
    private TextPaint mTipPaint;
    private String mTipText;
    private int mTipTextColor;
    private int mTipTextMargin;
    private int mTipTextSize;
    private StaticLayout mTipTextSl;
    private int mToolbarHeight;
    private int mTopOffset;

    public ScanBoxView(Context context) {
        super(context);
        this.mPaint.setAntiAlias(true);
        this.mMaskColor = Color.parseColor("#33FFFFFF");
        this.mCornerColor = -1;
        this.mCornerLength = BGAQRCodeUtil.dp2px(context, 20.0f);
        this.mCornerSize = BGAQRCodeUtil.dp2px(context, 3.0f);
        this.mScanLineSize = BGAQRCodeUtil.dp2px(context, 1.0f);
        this.mScanLineColor = -1;
        this.mTopOffset = BGAQRCodeUtil.dp2px(context, 90.0f);
        this.mRectWidth = BGAQRCodeUtil.dp2px(context, 200.0f);
        this.mBarcodeRectHeight = BGAQRCodeUtil.dp2px(context, 140.0f);
        this.mScanLineMargin = 0;
        this.mIsShowDefaultScanLineDrawable = false;
        this.mCustomScanLineDrawable = null;
        this.mScanLineBitmap = null;
        this.mBorderSize = BGAQRCodeUtil.dp2px(context, 1.0f);
        this.mBorderColor = -1;
        this.mAnimTime = 1000;
        this.mIsCenterVertical = false;
        this.mToolbarHeight = 0;
        this.mIsBarcode = false;
        this.mMoveStepDistance = BGAQRCodeUtil.dp2px(context, 2.0f);
        this.mTipText = null;
        this.mTipTextSize = BGAQRCodeUtil.sp2px(context, 14.0f);
        this.mTipTextColor = -1;
        this.mIsTipTextBelowRect = false;
        this.mTipTextMargin = BGAQRCodeUtil.dp2px(context, 20.0f);
        this.mIsShowTipTextAsSingleLine = false;
        this.mTipBackgroundColor = Color.parseColor("#22000000");
        this.mIsShowTipBackground = false;
        this.mIsScanLineReverse = false;
        this.mIsShowDefaultGridScanLineDrawable = false;
        this.mTipPaint = new TextPaint();
        this.mTipPaint.setAntiAlias(true);
        this.mTipBackgroundRadius = BGAQRCodeUtil.dp2px(context, 4.0f);
        this.mIsOnlyDecodeScanBoxArea = false;
    }

    public void initCustomAttrs(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QRCodeView);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            initCustomAttr(obtainStyledAttributes.getIndex(i), obtainStyledAttributes);
        }
        obtainStyledAttributes.recycle();
        afterInitCustomAttrs();
    }

    private void initCustomAttr(int i, TypedArray typedArray) {
        if (i == R.styleable.QRCodeView_qrcv_topOffset) {
            this.mTopOffset = typedArray.getDimensionPixelSize(i, this.mTopOffset);
        } else if (i == R.styleable.QRCodeView_qrcv_cornerSize) {
            this.mCornerSize = typedArray.getDimensionPixelSize(i, this.mCornerSize);
        } else if (i == R.styleable.QRCodeView_qrcv_cornerLength) {
            this.mCornerLength = typedArray.getDimensionPixelSize(i, this.mCornerLength);
        } else if (i == R.styleable.QRCodeView_qrcv_scanLineSize) {
            this.mScanLineSize = typedArray.getDimensionPixelSize(i, this.mScanLineSize);
        } else if (i == R.styleable.QRCodeView_qrcv_rectWidth) {
            this.mRectWidth = typedArray.getDimensionPixelSize(i, this.mRectWidth);
        } else if (i == R.styleable.QRCodeView_qrcv_maskColor) {
            this.mMaskColor = typedArray.getColor(i, this.mMaskColor);
        } else if (i == R.styleable.QRCodeView_qrcv_cornerColor) {
            this.mCornerColor = typedArray.getColor(i, this.mCornerColor);
        } else if (i == R.styleable.QRCodeView_qrcv_scanLineColor) {
            this.mScanLineColor = typedArray.getColor(i, this.mScanLineColor);
        } else if (i == R.styleable.QRCodeView_qrcv_scanLineMargin) {
            this.mScanLineMargin = typedArray.getDimensionPixelSize(i, this.mScanLineMargin);
        } else if (i == R.styleable.QRCodeView_qrcv_isShowDefaultScanLineDrawable) {
            this.mIsShowDefaultScanLineDrawable = typedArray.getBoolean(i, this.mIsShowDefaultScanLineDrawable);
        } else if (i == R.styleable.QRCodeView_qrcv_customScanLineDrawable) {
            this.mCustomScanLineDrawable = typedArray.getDrawable(i);
        } else if (i == R.styleable.QRCodeView_qrcv_borderSize) {
            this.mBorderSize = typedArray.getDimensionPixelSize(i, this.mBorderSize);
        } else if (i == R.styleable.QRCodeView_qrcv_borderColor) {
            this.mBorderColor = typedArray.getColor(i, this.mBorderColor);
        } else if (i == R.styleable.QRCodeView_qrcv_animTime) {
            this.mAnimTime = typedArray.getInteger(i, this.mAnimTime);
        } else if (i == R.styleable.QRCodeView_qrcv_isCenterVertical) {
            this.mIsCenterVertical = typedArray.getBoolean(i, this.mIsCenterVertical);
        } else if (i == R.styleable.QRCodeView_qrcv_toolbarHeight) {
            this.mToolbarHeight = typedArray.getDimensionPixelSize(i, this.mToolbarHeight);
        } else if (i == R.styleable.QRCodeView_qrcv_barcodeRectHeight) {
            this.mBarcodeRectHeight = typedArray.getDimensionPixelSize(i, this.mBarcodeRectHeight);
        } else if (i == R.styleable.QRCodeView_qrcv_isBarcode) {
            this.mIsBarcode = typedArray.getBoolean(i, this.mIsBarcode);
        } else if (i == R.styleable.QRCodeView_qrcv_barCodeTipText) {
            this.mBarCodeTipText = typedArray.getString(i);
        } else if (i == R.styleable.QRCodeView_qrcv_qrCodeTipText) {
            this.mQRCodeTipText = typedArray.getString(i);
        } else if (i == R.styleable.QRCodeView_qrcv_tipTextSize) {
            this.mTipTextSize = typedArray.getDimensionPixelSize(i, this.mTipTextSize);
        } else if (i == R.styleable.QRCodeView_qrcv_tipTextColor) {
            this.mTipTextColor = typedArray.getColor(i, this.mTipTextColor);
        } else if (i == R.styleable.QRCodeView_qrcv_isTipTextBelowRect) {
            this.mIsTipTextBelowRect = typedArray.getBoolean(i, this.mIsTipTextBelowRect);
        } else if (i == R.styleable.QRCodeView_qrcv_tipTextMargin) {
            this.mTipTextMargin = typedArray.getDimensionPixelSize(i, this.mTipTextMargin);
        } else if (i == R.styleable.QRCodeView_qrcv_isShowTipTextAsSingleLine) {
            this.mIsShowTipTextAsSingleLine = typedArray.getBoolean(i, this.mIsShowTipTextAsSingleLine);
        } else if (i == R.styleable.QRCodeView_qrcv_isShowTipBackground) {
            this.mIsShowTipBackground = typedArray.getBoolean(i, this.mIsShowTipBackground);
        } else if (i == R.styleable.QRCodeView_qrcv_tipBackgroundColor) {
            this.mTipBackgroundColor = typedArray.getColor(i, this.mTipBackgroundColor);
        } else if (i == R.styleable.QRCodeView_qrcv_isScanLineReverse) {
            this.mIsScanLineReverse = typedArray.getBoolean(i, this.mIsScanLineReverse);
        } else if (i == R.styleable.QRCodeView_qrcv_isShowDefaultGridScanLineDrawable) {
            this.mIsShowDefaultGridScanLineDrawable = typedArray.getBoolean(i, this.mIsShowDefaultGridScanLineDrawable);
        } else if (i == R.styleable.QRCodeView_qrcv_customGridScanLineDrawable) {
            this.mCustomGridScanLineDrawable = typedArray.getDrawable(i);
        } else if (i == R.styleable.QRCodeView_qrcv_isOnlyDecodeScanBoxArea) {
            this.mIsOnlyDecodeScanBoxArea = typedArray.getBoolean(i, this.mIsOnlyDecodeScanBoxArea);
        }
    }

    private void afterInitCustomAttrs() {
        if (this.mCustomGridScanLineDrawable != null) {
            this.mOriginQRCodeGridScanLineBitmap = ((BitmapDrawable) this.mCustomGridScanLineDrawable).getBitmap();
        }
        if (this.mOriginQRCodeGridScanLineBitmap == null) {
            this.mOriginQRCodeGridScanLineBitmap = BitmapFactory.decodeResource(getResources(), R.mipmap.qrcode_default_grid_scan_line);
            this.mOriginQRCodeGridScanLineBitmap = BGAQRCodeUtil.makeTintBitmap(this.mOriginQRCodeGridScanLineBitmap, this.mScanLineColor);
        }
        this.mOriginBarCodeGridScanLineBitmap = BGAQRCodeUtil.adjustPhotoRotation(this.mOriginQRCodeGridScanLineBitmap, 90);
        this.mOriginBarCodeGridScanLineBitmap = BGAQRCodeUtil.adjustPhotoRotation(this.mOriginBarCodeGridScanLineBitmap, 90);
        this.mOriginBarCodeGridScanLineBitmap = BGAQRCodeUtil.adjustPhotoRotation(this.mOriginBarCodeGridScanLineBitmap, 90);
        if (this.mCustomScanLineDrawable != null) {
            this.mOriginQRCodeScanLineBitmap = ((BitmapDrawable) this.mCustomScanLineDrawable).getBitmap();
        }
        if (this.mOriginQRCodeScanLineBitmap == null) {
            this.mOriginQRCodeScanLineBitmap = BitmapFactory.decodeResource(getResources(), R.mipmap.qrcode_default_scan_line);
            this.mOriginQRCodeScanLineBitmap = BGAQRCodeUtil.makeTintBitmap(this.mOriginQRCodeScanLineBitmap, this.mScanLineColor);
        }
        this.mOriginBarCodeScanLineBitmap = BGAQRCodeUtil.adjustPhotoRotation(this.mOriginQRCodeScanLineBitmap, 90);
        this.mTopOffset += this.mToolbarHeight;
        this.mHalfCornerSize = (1.0f * ((float) this.mCornerSize)) / 2.0f;
        this.mTipPaint.setTextSize((float) this.mTipTextSize);
        this.mTipPaint.setColor(this.mTipTextColor);
        setIsBarcode(this.mIsBarcode);
    }

    public void onDraw(Canvas canvas) {
        if (this.mFramingRect != null) {
            drawMask(canvas);
            drawBorderLine(canvas);
            drawCornerLine(canvas);
            drawScanLine(canvas);
            drawTipText(canvas);
            moveScanLine();
        }
    }

    private void drawMask(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.mMaskColor != 0) {
            this.mPaint.setStyle(Style.FILL);
            this.mPaint.setColor(this.mMaskColor);
            canvas.drawRect(0.0f, 0.0f, (float) width, (float) this.mFramingRect.top, this.mPaint);
            canvas.drawRect(0.0f, (float) this.mFramingRect.top, (float) this.mFramingRect.left, (float) (this.mFramingRect.bottom + 1), this.mPaint);
            canvas.drawRect((float) (this.mFramingRect.right + 1), (float) this.mFramingRect.top, (float) width, (float) (this.mFramingRect.bottom + 1), this.mPaint);
            canvas.drawRect(0.0f, (float) (this.mFramingRect.bottom + 1), (float) width, (float) height, this.mPaint);
        }
    }

    private void drawBorderLine(Canvas canvas) {
        if (this.mBorderSize > 0) {
            this.mPaint.setStyle(Style.STROKE);
            this.mPaint.setColor(this.mBorderColor);
            this.mPaint.setStrokeWidth((float) this.mBorderSize);
            canvas.drawRect(this.mFramingRect, this.mPaint);
        }
    }

    private void drawCornerLine(Canvas canvas) {
        if (this.mHalfCornerSize > 0.0f) {
            this.mPaint.setStyle(Style.STROKE);
            this.mPaint.setColor(this.mCornerColor);
            this.mPaint.setStrokeWidth((float) this.mCornerSize);
            Canvas canvas2 = canvas;
            canvas2.drawLine(((float) this.mFramingRect.left) - this.mHalfCornerSize, (float) this.mFramingRect.top, ((float) this.mCornerLength) + (((float) this.mFramingRect.left) - this.mHalfCornerSize), (float) this.mFramingRect.top, this.mPaint);
            Canvas canvas3 = canvas;
            canvas3.drawLine((float) this.mFramingRect.left, ((float) this.mFramingRect.top) - this.mHalfCornerSize, (float) this.mFramingRect.left, ((float) this.mCornerLength) + (((float) this.mFramingRect.top) - this.mHalfCornerSize), this.mPaint);
            Canvas canvas4 = canvas;
            canvas4.drawLine(this.mHalfCornerSize + ((float) this.mFramingRect.right), (float) this.mFramingRect.top, (((float) this.mFramingRect.right) + this.mHalfCornerSize) - ((float) this.mCornerLength), (float) this.mFramingRect.top, this.mPaint);
            Canvas canvas5 = canvas;
            canvas5.drawLine((float) this.mFramingRect.right, ((float) this.mFramingRect.top) - this.mHalfCornerSize, (float) this.mFramingRect.right, ((float) this.mCornerLength) + (((float) this.mFramingRect.top) - this.mHalfCornerSize), this.mPaint);
            Canvas canvas6 = canvas;
            canvas6.drawLine(((float) this.mFramingRect.left) - this.mHalfCornerSize, (float) this.mFramingRect.bottom, ((float) this.mCornerLength) + (((float) this.mFramingRect.left) - this.mHalfCornerSize), (float) this.mFramingRect.bottom, this.mPaint);
            Canvas canvas7 = canvas;
            canvas7.drawLine((float) this.mFramingRect.left, this.mHalfCornerSize + ((float) this.mFramingRect.bottom), (float) this.mFramingRect.left, (((float) this.mFramingRect.bottom) + this.mHalfCornerSize) - ((float) this.mCornerLength), this.mPaint);
            Canvas canvas8 = canvas;
            canvas8.drawLine(this.mHalfCornerSize + ((float) this.mFramingRect.right), (float) this.mFramingRect.bottom, (((float) this.mFramingRect.right) + this.mHalfCornerSize) - ((float) this.mCornerLength), (float) this.mFramingRect.bottom, this.mPaint);
            Canvas canvas9 = canvas;
            canvas9.drawLine((float) this.mFramingRect.right, this.mHalfCornerSize + ((float) this.mFramingRect.bottom), (float) this.mFramingRect.right, (((float) this.mFramingRect.bottom) + this.mHalfCornerSize) - ((float) this.mCornerLength), this.mPaint);
        }
    }

    private void drawScanLine(Canvas canvas) {
        if (this.mIsBarcode) {
            if (this.mGridScanLineBitmap != null) {
                RectF rectF = new RectF(((float) this.mFramingRect.left) + this.mHalfCornerSize + 0.5f, ((float) this.mFramingRect.top) + this.mHalfCornerSize + ((float) this.mScanLineMargin), this.mGridScanLineRight, (((float) this.mFramingRect.bottom) - this.mHalfCornerSize) - ((float) this.mScanLineMargin));
                Rect rect = new Rect((int) (((float) this.mGridScanLineBitmap.getWidth()) - rectF.width()), 0, this.mGridScanLineBitmap.getWidth(), this.mGridScanLineBitmap.getHeight());
                if (rect.left < 0) {
                    rect.left = 0;
                    rectF.left = rectF.right - ((float) rect.width());
                }
                canvas.drawBitmap(this.mGridScanLineBitmap, rect, rectF, this.mPaint);
            } else if (this.mScanLineBitmap != null) {
                canvas.drawBitmap(this.mScanLineBitmap, null, new RectF(this.mScanLineLeft, ((float) this.mFramingRect.top) + this.mHalfCornerSize + ((float) this.mScanLineMargin), this.mScanLineLeft + ((float) this.mScanLineBitmap.getWidth()), (((float) this.mFramingRect.bottom) - this.mHalfCornerSize) - ((float) this.mScanLineMargin)), this.mPaint);
            } else {
                this.mPaint.setStyle(Style.FILL);
                this.mPaint.setColor(this.mScanLineColor);
                Canvas canvas2 = canvas;
                canvas2.drawRect(this.mScanLineLeft, ((float) this.mScanLineMargin) + ((float) this.mFramingRect.top) + this.mHalfCornerSize, ((float) this.mScanLineSize) + this.mScanLineLeft, (((float) this.mFramingRect.bottom) - this.mHalfCornerSize) - ((float) this.mScanLineMargin), this.mPaint);
            }
        } else if (this.mGridScanLineBitmap != null) {
            RectF rectF2 = new RectF(((float) this.mFramingRect.left) + this.mHalfCornerSize + ((float) this.mScanLineMargin), ((float) this.mFramingRect.top) + this.mHalfCornerSize + 0.5f, (((float) this.mFramingRect.right) - this.mHalfCornerSize) - ((float) this.mScanLineMargin), this.mGridScanLineBottom);
            Rect rect2 = new Rect(0, (int) (((float) this.mGridScanLineBitmap.getHeight()) - rectF2.height()), this.mGridScanLineBitmap.getWidth(), this.mGridScanLineBitmap.getHeight());
            if (rect2.top < 0) {
                rect2.top = 0;
                rectF2.top = rectF2.bottom - ((float) rect2.height());
            }
            canvas.drawBitmap(this.mGridScanLineBitmap, rect2, rectF2, this.mPaint);
        } else if (this.mScanLineBitmap != null) {
            canvas.drawBitmap(this.mScanLineBitmap, null, new RectF(((float) this.mFramingRect.left) + this.mHalfCornerSize + ((float) this.mScanLineMargin), this.mScanLineTop, (((float) this.mFramingRect.right) - this.mHalfCornerSize) - ((float) this.mScanLineMargin), this.mScanLineTop + ((float) this.mScanLineBitmap.getHeight())), this.mPaint);
        } else {
            this.mPaint.setStyle(Style.FILL);
            this.mPaint.setColor(this.mScanLineColor);
            Canvas canvas3 = canvas;
            canvas3.drawRect(((float) this.mScanLineMargin) + ((float) this.mFramingRect.left) + this.mHalfCornerSize, this.mScanLineTop, (((float) this.mFramingRect.right) - this.mHalfCornerSize) - ((float) this.mScanLineMargin), ((float) this.mScanLineSize) + this.mScanLineTop, this.mPaint);
        }
    }

    private void drawTipText(Canvas canvas) {
        if (!TextUtils.isEmpty(this.mTipText) && this.mTipTextSl != null) {
            if (this.mIsTipTextBelowRect) {
                if (this.mIsShowTipBackground) {
                    this.mPaint.setColor(this.mTipBackgroundColor);
                    this.mPaint.setStyle(Style.FILL);
                    if (this.mIsShowTipTextAsSingleLine) {
                        Rect rect = new Rect();
                        this.mTipPaint.getTextBounds(this.mTipText, 0, this.mTipText.length(), rect);
                        float width = (float) (((canvas.getWidth() - rect.width()) / 2) - this.mTipBackgroundRadius);
                        canvas.drawRoundRect(new RectF(width, (float) ((this.mFramingRect.bottom + this.mTipTextMargin) - this.mTipBackgroundRadius), ((float) rect.width()) + width + ((float) (this.mTipBackgroundRadius * 2)), (float) (this.mFramingRect.bottom + this.mTipTextMargin + this.mTipTextSl.getHeight() + this.mTipBackgroundRadius)), (float) this.mTipBackgroundRadius, (float) this.mTipBackgroundRadius, this.mPaint);
                    } else {
                        canvas.drawRoundRect(new RectF((float) this.mFramingRect.left, (float) ((this.mFramingRect.bottom + this.mTipTextMargin) - this.mTipBackgroundRadius), (float) this.mFramingRect.right, (float) (this.mFramingRect.bottom + this.mTipTextMargin + this.mTipTextSl.getHeight() + this.mTipBackgroundRadius)), (float) this.mTipBackgroundRadius, (float) this.mTipBackgroundRadius, this.mPaint);
                    }
                }
                canvas.save();
                if (this.mIsShowTipTextAsSingleLine) {
                    canvas.translate(0.0f, (float) (this.mFramingRect.bottom + this.mTipTextMargin));
                } else {
                    canvas.translate((float) (this.mFramingRect.left + this.mTipBackgroundRadius), (float) (this.mFramingRect.bottom + this.mTipTextMargin));
                }
                this.mTipTextSl.draw(canvas);
                canvas.restore();
                return;
            }
            if (this.mIsShowTipBackground) {
                this.mPaint.setColor(this.mTipBackgroundColor);
                this.mPaint.setStyle(Style.FILL);
                if (this.mIsShowTipTextAsSingleLine) {
                    Rect rect2 = new Rect();
                    this.mTipPaint.getTextBounds(this.mTipText, 0, this.mTipText.length(), rect2);
                    float width2 = (float) (((canvas.getWidth() - rect2.width()) / 2) - this.mTipBackgroundRadius);
                    canvas.drawRoundRect(new RectF(width2, (float) (((this.mFramingRect.top - this.mTipTextMargin) - this.mTipTextSl.getHeight()) - this.mTipBackgroundRadius), ((float) rect2.width()) + width2 + ((float) (this.mTipBackgroundRadius * 2)), (float) ((this.mFramingRect.top - this.mTipTextMargin) + this.mTipBackgroundRadius)), (float) this.mTipBackgroundRadius, (float) this.mTipBackgroundRadius, this.mPaint);
                } else {
                    canvas.drawRoundRect(new RectF((float) this.mFramingRect.left, (float) (((this.mFramingRect.top - this.mTipTextMargin) - this.mTipTextSl.getHeight()) - this.mTipBackgroundRadius), (float) this.mFramingRect.right, (float) ((this.mFramingRect.top - this.mTipTextMargin) + this.mTipBackgroundRadius)), (float) this.mTipBackgroundRadius, (float) this.mTipBackgroundRadius, this.mPaint);
                }
            }
            canvas.save();
            if (this.mIsShowTipTextAsSingleLine) {
                canvas.translate(0.0f, (float) ((this.mFramingRect.top - this.mTipTextMargin) - this.mTipTextSl.getHeight()));
            } else {
                canvas.translate((float) (this.mFramingRect.left + this.mTipBackgroundRadius), (float) ((this.mFramingRect.top - this.mTipTextMargin) - this.mTipTextSl.getHeight()));
            }
            this.mTipTextSl.draw(canvas);
            canvas.restore();
        }
    }

    private void moveScanLine() {
        if (this.mIsBarcode) {
            if (this.mGridScanLineBitmap == null) {
                this.mScanLineLeft += (float) this.mMoveStepDistance;
                int i = this.mScanLineSize;
                if (this.mScanLineBitmap != null) {
                    i = this.mScanLineBitmap.getWidth();
                }
                if (this.mIsScanLineReverse) {
                    if (((float) i) + this.mScanLineLeft > ((float) this.mFramingRect.right) - this.mHalfCornerSize || this.mScanLineLeft < ((float) this.mFramingRect.left) + this.mHalfCornerSize) {
                        this.mMoveStepDistance = -this.mMoveStepDistance;
                    }
                } else {
                    if (((float) i) + this.mScanLineLeft > ((float) this.mFramingRect.right) - this.mHalfCornerSize) {
                        this.mScanLineLeft = ((float) this.mFramingRect.left) + this.mHalfCornerSize + 0.5f;
                    }
                }
            } else {
                this.mGridScanLineRight += (float) this.mMoveStepDistance;
                if (this.mGridScanLineRight > ((float) this.mFramingRect.right) - this.mHalfCornerSize) {
                    this.mGridScanLineRight = ((float) this.mFramingRect.left) + this.mHalfCornerSize + 0.5f;
                }
            }
        } else if (this.mGridScanLineBitmap == null) {
            this.mScanLineTop += (float) this.mMoveStepDistance;
            int i2 = this.mScanLineSize;
            if (this.mScanLineBitmap != null) {
                i2 = this.mScanLineBitmap.getHeight();
            }
            if (this.mIsScanLineReverse) {
                if (((float) i2) + this.mScanLineTop > ((float) this.mFramingRect.bottom) - this.mHalfCornerSize || this.mScanLineTop < ((float) this.mFramingRect.top) + this.mHalfCornerSize) {
                    this.mMoveStepDistance = -this.mMoveStepDistance;
                }
            } else {
                if (((float) i2) + this.mScanLineTop > ((float) this.mFramingRect.bottom) - this.mHalfCornerSize) {
                    this.mScanLineTop = ((float) this.mFramingRect.top) + this.mHalfCornerSize + 0.5f;
                }
            }
        } else {
            this.mGridScanLineBottom += (float) this.mMoveStepDistance;
            if (this.mGridScanLineBottom > ((float) this.mFramingRect.bottom) - this.mHalfCornerSize) {
                this.mGridScanLineBottom = ((float) this.mFramingRect.top) + this.mHalfCornerSize + 0.5f;
            }
        }
        postInvalidateDelayed((long) this.mAnimDelayTime, this.mFramingRect.left, this.mFramingRect.top, this.mFramingRect.right, this.mFramingRect.bottom);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        calFramingRect();
    }

    private void calFramingRect() {
        int width = (getWidth() - this.mRectWidth) / 2;
        this.mFramingRect = new Rect(width, this.mTopOffset, this.mRectWidth + width, this.mTopOffset + this.mRectHeight);
        if (this.mIsBarcode) {
            float f = ((float) this.mFramingRect.left) + this.mHalfCornerSize + 0.5f;
            this.mScanLineLeft = f;
            this.mGridScanLineRight = f;
            return;
        }
        float f2 = ((float) this.mFramingRect.top) + this.mHalfCornerSize + 0.5f;
        this.mScanLineTop = f2;
        this.mGridScanLineBottom = f2;
    }

    public Rect getScanBoxAreaRect(int i) {
        if (!this.mIsOnlyDecodeScanBoxArea) {
            return null;
        }
        Rect rect = new Rect(this.mFramingRect);
        float measuredHeight = (1.0f * ((float) i)) / ((float) getMeasuredHeight());
        rect.left = (int) (((float) rect.left) * measuredHeight);
        rect.right = (int) (((float) rect.right) * measuredHeight);
        rect.top = (int) (((float) rect.top) * measuredHeight);
        rect.bottom = (int) (measuredHeight * ((float) rect.bottom));
        return rect;
    }

    public void setIsBarcode(boolean z) {
        this.mIsBarcode = z;
        if (this.mCustomGridScanLineDrawable != null || this.mIsShowDefaultGridScanLineDrawable) {
            if (this.mIsBarcode) {
                this.mGridScanLineBitmap = this.mOriginBarCodeGridScanLineBitmap;
            } else {
                this.mGridScanLineBitmap = this.mOriginQRCodeGridScanLineBitmap;
            }
        } else if (this.mCustomScanLineDrawable != null || this.mIsShowDefaultScanLineDrawable) {
            if (this.mIsBarcode) {
                this.mScanLineBitmap = this.mOriginBarCodeScanLineBitmap;
            } else {
                this.mScanLineBitmap = this.mOriginQRCodeScanLineBitmap;
            }
        }
        if (this.mIsBarcode) {
            this.mTipText = this.mBarCodeTipText;
            this.mRectHeight = this.mBarcodeRectHeight;
            this.mAnimDelayTime = (int) (((((float) this.mAnimTime) * 1.0f) * ((float) this.mMoveStepDistance)) / ((float) this.mRectWidth));
        } else {
            this.mTipText = this.mQRCodeTipText;
            this.mRectHeight = this.mRectWidth;
            this.mAnimDelayTime = (int) (((((float) this.mAnimTime) * 1.0f) * ((float) this.mMoveStepDistance)) / ((float) this.mRectHeight));
        }
        if (!TextUtils.isEmpty(this.mTipText)) {
            if (this.mIsShowTipTextAsSingleLine) {
                this.mTipTextSl = new StaticLayout(this.mTipText, this.mTipPaint, BGAQRCodeUtil.getScreenResolution(getContext()).x, Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
            } else {
                this.mTipTextSl = new StaticLayout(this.mTipText, this.mTipPaint, this.mRectWidth - (this.mTipBackgroundRadius * 2), Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
            }
        }
        if (this.mIsCenterVertical) {
            int i = BGAQRCodeUtil.getScreenResolution(getContext()).y;
            if (this.mToolbarHeight == 0) {
                this.mTopOffset = (i - this.mRectHeight) / 2;
            } else {
                this.mTopOffset = ((i - this.mRectHeight) / 2) + (this.mToolbarHeight / 2);
            }
        }
        calFramingRect();
        postInvalidate();
    }

    public boolean getIsBarcode() {
        return this.mIsBarcode;
    }

    public int getMaskColor() {
        return this.mMaskColor;
    }

    public void setMaskColor(int i) {
        this.mMaskColor = i;
    }

    public int getCornerColor() {
        return this.mCornerColor;
    }

    public void setCornerColor(int i) {
        this.mCornerColor = i;
    }

    public int getCornerLength() {
        return this.mCornerLength;
    }

    public void setCornerLength(int i) {
        this.mCornerLength = i;
    }

    public int getCornerSize() {
        return this.mCornerSize;
    }

    public void setCornerSize(int i) {
        this.mCornerSize = i;
    }

    public int getRectWidth() {
        return this.mRectWidth;
    }

    public void setRectWidth(int i) {
        this.mRectWidth = i;
    }

    public int getRectHeight() {
        return this.mRectHeight;
    }

    public void setRectHeight(int i) {
        this.mRectHeight = i;
    }

    public int getBarcodeRectHeight() {
        return this.mBarcodeRectHeight;
    }

    public void setBarcodeRectHeight(int i) {
        this.mBarcodeRectHeight = i;
    }

    public int getTopOffset() {
        return this.mTopOffset;
    }

    public void setTopOffset(int i) {
        this.mTopOffset = i;
    }

    public int getScanLineSize() {
        return this.mScanLineSize;
    }

    public void setScanLineSize(int i) {
        this.mScanLineSize = i;
    }

    public int getScanLineColor() {
        return this.mScanLineColor;
    }

    public void setScanLineColor(int i) {
        this.mScanLineColor = i;
    }

    public int getScanLineMargin() {
        return this.mScanLineMargin;
    }

    public void setScanLineMargin(int i) {
        this.mScanLineMargin = i;
    }

    public boolean isShowDefaultScanLineDrawable() {
        return this.mIsShowDefaultScanLineDrawable;
    }

    public void setShowDefaultScanLineDrawable(boolean z) {
        this.mIsShowDefaultScanLineDrawable = z;
    }

    public Drawable getCustomScanLineDrawable() {
        return this.mCustomScanLineDrawable;
    }

    public void setCustomScanLineDrawable(Drawable drawable) {
        this.mCustomScanLineDrawable = drawable;
    }

    public Bitmap getScanLineBitmap() {
        return this.mScanLineBitmap;
    }

    public void setScanLineBitmap(Bitmap bitmap) {
        this.mScanLineBitmap = bitmap;
    }

    public int getBorderSize() {
        return this.mBorderSize;
    }

    public void setBorderSize(int i) {
        this.mBorderSize = i;
    }

    public int getBorderColor() {
        return this.mBorderColor;
    }

    public void setBorderColor(int i) {
        this.mBorderColor = i;
    }

    public int getAnimTime() {
        return this.mAnimTime;
    }

    public void setAnimTime(int i) {
        this.mAnimTime = i;
    }

    public boolean isCenterVertical() {
        return this.mIsCenterVertical;
    }

    public void setCenterVertical(boolean z) {
        this.mIsCenterVertical = z;
    }

    public int getToolbarHeight() {
        return this.mToolbarHeight;
    }

    public void setToolbarHeight(int i) {
        this.mToolbarHeight = i;
    }

    public String getQRCodeTipText() {
        return this.mQRCodeTipText;
    }

    public void setQRCodeTipText(String str) {
        this.mQRCodeTipText = str;
    }

    public String getBarCodeTipText() {
        return this.mBarCodeTipText;
    }

    public void setBarCodeTipText(String str) {
        this.mBarCodeTipText = str;
    }

    public String getTipText() {
        return this.mTipText;
    }

    public void setTipText(String str) {
        this.mTipText = str;
    }

    public int getTipTextColor() {
        return this.mTipTextColor;
    }

    public void setTipTextColor(int i) {
        this.mTipTextColor = i;
    }

    public int getTipTextSize() {
        return this.mTipTextSize;
    }

    public void setTipTextSize(int i) {
        this.mTipTextSize = i;
    }

    public boolean isTipTextBelowRect() {
        return this.mIsTipTextBelowRect;
    }

    public void setTipTextBelowRect(boolean z) {
        this.mIsTipTextBelowRect = z;
    }

    public int getTipTextMargin() {
        return this.mTipTextMargin;
    }

    public void setTipTextMargin(int i) {
        this.mTipTextMargin = i;
    }

    public boolean isShowTipTextAsSingleLine() {
        return this.mIsShowTipTextAsSingleLine;
    }

    public void setShowTipTextAsSingleLine(boolean z) {
        this.mIsShowTipTextAsSingleLine = z;
    }

    public boolean isShowTipBackground() {
        return this.mIsShowTipBackground;
    }

    public void setShowTipBackground(boolean z) {
        this.mIsShowTipBackground = z;
    }

    public int getTipBackgroundColor() {
        return this.mTipBackgroundColor;
    }

    public void setTipBackgroundColor(int i) {
        this.mTipBackgroundColor = i;
    }

    public boolean isScanLineReverse() {
        return this.mIsScanLineReverse;
    }

    public void setScanLineReverse(boolean z) {
        this.mIsScanLineReverse = z;
    }

    public boolean isShowDefaultGridScanLineDrawable() {
        return this.mIsShowDefaultGridScanLineDrawable;
    }

    public void setShowDefaultGridScanLineDrawable(boolean z) {
        this.mIsShowDefaultGridScanLineDrawable = z;
    }

    public float getHalfCornerSize() {
        return this.mHalfCornerSize;
    }

    public void setHalfCornerSize(float f) {
        this.mHalfCornerSize = f;
    }

    public StaticLayout getTipTextSl() {
        return this.mTipTextSl;
    }

    public void setTipTextSl(StaticLayout staticLayout) {
        this.mTipTextSl = staticLayout;
    }

    public int getTipBackgroundRadius() {
        return this.mTipBackgroundRadius;
    }

    public void setTipBackgroundRadius(int i) {
        this.mTipBackgroundRadius = i;
    }

    public boolean isOnlyDecodeScanBoxArea() {
        return this.mIsOnlyDecodeScanBoxArea;
    }

    public void setOnlyDecodeScanBoxArea(boolean z) {
        this.mIsOnlyDecodeScanBoxArea = z;
    }
}
