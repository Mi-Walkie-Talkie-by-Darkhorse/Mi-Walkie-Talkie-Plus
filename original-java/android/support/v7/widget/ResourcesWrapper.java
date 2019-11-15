package android.support.v7.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

class ResourcesWrapper extends Resources {
    private final Resources mResources;

    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
    }

    public CharSequence getText(int i) throws NotFoundException {
        return this.mResources.getText(i);
    }

    public CharSequence getQuantityText(int i, int i2) throws NotFoundException {
        return this.mResources.getQuantityText(i, i2);
    }

    public String getString(int i) throws NotFoundException {
        return this.mResources.getString(i);
    }

    public String getString(int i, Object... objArr) throws NotFoundException {
        return this.mResources.getString(i, objArr);
    }

    public String getQuantityString(int i, int i2, Object... objArr) throws NotFoundException {
        return this.mResources.getQuantityString(i, i2, objArr);
    }

    public String getQuantityString(int i, int i2) throws NotFoundException {
        return this.mResources.getQuantityString(i, i2);
    }

    public CharSequence getText(int i, CharSequence charSequence) {
        return this.mResources.getText(i, charSequence);
    }

    public CharSequence[] getTextArray(int i) throws NotFoundException {
        return this.mResources.getTextArray(i);
    }

    public String[] getStringArray(int i) throws NotFoundException {
        return this.mResources.getStringArray(i);
    }

    public int[] getIntArray(int i) throws NotFoundException {
        return this.mResources.getIntArray(i);
    }

    public TypedArray obtainTypedArray(int i) throws NotFoundException {
        return this.mResources.obtainTypedArray(i);
    }

    public float getDimension(int i) throws NotFoundException {
        return this.mResources.getDimension(i);
    }

    public int getDimensionPixelOffset(int i) throws NotFoundException {
        return this.mResources.getDimensionPixelOffset(i);
    }

    public int getDimensionPixelSize(int i) throws NotFoundException {
        return this.mResources.getDimensionPixelSize(i);
    }

    public float getFraction(int i, int i2, int i3) {
        return this.mResources.getFraction(i, i2, i3);
    }

    public Drawable getDrawable(int i) throws NotFoundException {
        return this.mResources.getDrawable(i);
    }

    public Drawable getDrawable(int i, Theme theme) throws NotFoundException {
        return this.mResources.getDrawable(i, theme);
    }

    public Drawable getDrawableForDensity(int i, int i2) throws NotFoundException {
        return this.mResources.getDrawableForDensity(i, i2);
    }

    public Drawable getDrawableForDensity(int i, int i2, Theme theme) {
        return this.mResources.getDrawableForDensity(i, i2, theme);
    }

    public Movie getMovie(int i) throws NotFoundException {
        return this.mResources.getMovie(i);
    }

    public int getColor(int i) throws NotFoundException {
        return this.mResources.getColor(i);
    }

    public ColorStateList getColorStateList(int i) throws NotFoundException {
        return this.mResources.getColorStateList(i);
    }

    public boolean getBoolean(int i) throws NotFoundException {
        return this.mResources.getBoolean(i);
    }

    public int getInteger(int i) throws NotFoundException {
        return this.mResources.getInteger(i);
    }

    public XmlResourceParser getLayout(int i) throws NotFoundException {
        return this.mResources.getLayout(i);
    }

    public XmlResourceParser getAnimation(int i) throws NotFoundException {
        return this.mResources.getAnimation(i);
    }

    public XmlResourceParser getXml(int i) throws NotFoundException {
        return this.mResources.getXml(i);
    }

    public InputStream openRawResource(int i) throws NotFoundException {
        return this.mResources.openRawResource(i);
    }

    public InputStream openRawResource(int i, TypedValue typedValue) throws NotFoundException {
        return this.mResources.openRawResource(i, typedValue);
    }

    public AssetFileDescriptor openRawResourceFd(int i) throws NotFoundException {
        return this.mResources.openRawResourceFd(i);
    }

    public void getValue(int i, TypedValue typedValue, boolean z) throws NotFoundException {
        this.mResources.getValue(i, typedValue, z);
    }

    public void getValueForDensity(int i, int i2, TypedValue typedValue, boolean z) throws NotFoundException {
        this.mResources.getValueForDensity(i, i2, typedValue, z);
    }

    public void getValue(String str, TypedValue typedValue, boolean z) throws NotFoundException {
        this.mResources.getValue(str, typedValue, z);
    }

    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.mResources.obtainAttributes(attributeSet, iArr);
    }

    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, displayMetrics);
        }
    }

    public DisplayMetrics getDisplayMetrics() {
        return this.mResources.getDisplayMetrics();
    }

    public Configuration getConfiguration() {
        return this.mResources.getConfiguration();
    }

    public int getIdentifier(String str, String str2, String str3) {
        return this.mResources.getIdentifier(str, str2, str3);
    }

    public String getResourceName(int i) throws NotFoundException {
        return this.mResources.getResourceName(i);
    }

    public String getResourcePackageName(int i) throws NotFoundException {
        return this.mResources.getResourcePackageName(i);
    }

    public String getResourceTypeName(int i) throws NotFoundException {
        return this.mResources.getResourceTypeName(i);
    }

    public String getResourceEntryName(int i) throws NotFoundException {
        return this.mResources.getResourceEntryName(i);
    }

    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.mResources.parseBundleExtras(xmlResourceParser, bundle);
    }

    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.mResources.parseBundleExtra(str, attributeSet, bundle);
    }
}
