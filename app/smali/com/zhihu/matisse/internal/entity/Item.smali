.class public Lcom/zhihu/matisse/internal/entity/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_DISPLAY_NAME_CAPTURE:Ljava/lang/String; = "Capture"

.field public static final ITEM_ID_CAPTURE:J = -0x1L


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Landroid/net/Uri;

.field public final d:J

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zhihu/matisse/internal/entity/Item$a;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/entity/Item$a;-><init>()V

    sput-object v0, Lcom/zhihu/matisse/internal/entity/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    .line 4
    iput-object p3, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/entity/Item;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/entity/Item;->e()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string p3, "external"

    .line 9
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 10
    :goto_0
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    .line 11
    iput-wide p4, p0, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    .line 12
    iput-wide p6, p0, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    .line 16
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zhihu/matisse/internal/entity/Item$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zhihu/matisse/internal/entity/Item;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static f(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;
    .locals 9

    .line 1
    new-instance v8, Lcom/zhihu/matisse/internal/entity/Item;

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "mime_type"

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_size"

    .line 3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "duration"

    .line 4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zhihu/matisse/internal/entity/Item;-><init>(JLjava/lang/String;JJ)V

    return-object v8
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/matisse/MimeType;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/matisse/MimeType;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhihu/matisse/MimeType;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/zhihu/matisse/internal/entity/Item;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    .line 3
    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    if-nez v0, :cond_5

    :cond_4
    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    iget-wide v4, p1, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-wide v2, p0, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/zhihu/matisse/internal/entity/Item;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/zhihu/matisse/internal/entity/Item;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Lcom/zhihu/matisse/internal/entity/Item;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
