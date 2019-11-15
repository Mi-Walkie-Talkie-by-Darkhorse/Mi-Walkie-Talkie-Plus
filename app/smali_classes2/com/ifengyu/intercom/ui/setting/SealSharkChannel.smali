.class public Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;
.super Ljava/lang/Object;
.source "SealSharkChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Long;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/Long;IIIIILjava/lang/String;IIIIZIZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    iput p2, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c:I

    iput p4, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d:I

    iput p5, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e:I

    iput p6, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f:I

    iput-object p7, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g:Ljava/lang/String;

    iput p8, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h:I

    iput p9, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i:I

    iput p10, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j:I

    iput p11, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k:I

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l:Z

    move/from16 v0, p13

    iput v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m:I

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b:I

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h:I

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i:I

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i:I

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k:I

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j:I

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m:I

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k:I

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SealSharkChannel{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rxFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rxCss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txCss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", band="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", polite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isStChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->l:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->n:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;->o:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
