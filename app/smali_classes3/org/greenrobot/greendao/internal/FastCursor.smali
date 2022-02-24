.class public final Lorg/greenrobot/greendao/internal/FastCursor;
.super Ljava/lang/Object;
.source "FastCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private final count:I

.field private position:I

.field private final window:Landroid/database/CursorWindow;


# direct methods
.method public constructor <init>(Landroid/database/CursorWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result p1

    iput p1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public deactivate()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBlob(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    return v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getShort(II)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isAfterLast()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFirst()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLast()Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isNull(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result p1

    return p1
.end method

.method public move(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/internal/FastCursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 2
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public moveToLast()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToNext()Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    .line 2
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveToPrevious()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public requery()Z
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
