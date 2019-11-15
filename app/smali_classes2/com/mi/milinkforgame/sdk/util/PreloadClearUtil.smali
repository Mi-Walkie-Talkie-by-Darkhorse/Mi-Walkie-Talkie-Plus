.class public Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;
.super Ljava/lang/Object;
.source "PreloadClearUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearColorStateListArray(Landroid/util/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static clearLongSparseArray(Landroid/util/LongSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->setBitmap(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static clearPreloadedColorDrawables()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "sPreloadedColorDrawables"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearLongSparseArray(Landroid/util/LongSparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static clearPreloadedColorStateLists()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "sPreloadedColorStateLists"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mPreloadedColorStateLists"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearSparseArray(Landroid/util/SparseArray;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearColorStateListArray(Landroid/util/LongSparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static clearPreloadedDrawables()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "sPreloadedDrawables"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearLongSparseArray(Landroid/util/LongSparseArray;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/LongSparseArray;

    check-cast v0, [Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearLongSparseArray(Landroid/util/LongSparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearResources()V
    .locals 2

    :try_start_0
    const-string v0, "PreloadClearUtil"

    const-string v1, "clear resource"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearPreloadedDrawables()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearPreloadedColorDrawables()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->clearPreloadedColorStateLists()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static clearSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private static setBitmap(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Bitmap;)V
    .locals 5

    :try_start_0
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "setBitmap"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/util/PreloadClearUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
