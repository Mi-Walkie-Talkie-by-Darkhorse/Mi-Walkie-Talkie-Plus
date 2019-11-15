.class public Lcom/ifengyu/intercom/ui/setting/UserChannel;
.super Ljava/lang/Object;
.source "UserChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/UserChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Long;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/UserChannel$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    iput p4, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;IILjava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a:Ljava/lang/Long;

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    iput-object p4, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    iput p5, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    iput p6, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f:I

    iput p7, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g:I

    iput p8, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserChannel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freq2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tone2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/UserChannel;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
