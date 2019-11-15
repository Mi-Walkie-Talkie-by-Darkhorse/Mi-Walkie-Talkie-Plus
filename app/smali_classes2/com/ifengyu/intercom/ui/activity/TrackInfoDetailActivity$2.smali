.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;
.super Ljava/lang/Object;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapScreenShot(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onMapScreenShot(Landroid/graphics/Bitmap;I)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    sget v0, Lcom/ifengyu/intercom/a;->c:I

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v0, 0x5a

    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    const/16 v4, 0x28

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v0, v0, -0xa

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/track_preview_pic_dir/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->f(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->h(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
