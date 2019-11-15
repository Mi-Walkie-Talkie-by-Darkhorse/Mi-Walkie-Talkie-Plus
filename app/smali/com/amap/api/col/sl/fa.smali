.class public final Lcom/amap/api/col/sl/fa;
.super Ljava/lang/Object;
.source "Cgi.java"


# static fields
.field private static p:Lcom/amap/api/col/sl/fa;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:S

.field public m:J

.field public n:Z

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/sl/fa;->p:Lcom/amap/api/col/sl/fa;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/amap/api/col/sl/fa;->a:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->b:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->c:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->d:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->e:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->f:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->g:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->h:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->i:I

    const/16 v0, -0x71

    iput v0, p0, Lcom/amap/api/col/sl/fa;->j:I

    iput v2, p0, Lcom/amap/api/col/sl/fa;->k:I

    iput-short v2, p0, Lcom/amap/api/col/sl/fa;->l:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/sl/fa;->m:J

    iput-boolean v2, p0, Lcom/amap/api/col/sl/fa;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/sl/fa;->o:Z

    iput p1, p0, Lcom/amap/api/col/sl/fa;->k:I

    iput-boolean p2, p0, Lcom/amap/api/col/sl/fa;->n:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/fa;->c:I

    return v0
.end method

.method public final a(Lcom/amap/api/col/sl/fa;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/amap/api/col/sl/fa;->k:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/amap/api/col/sl/fa;->k:I

    if-ne v2, v1, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->c:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->d:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->b:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/amap/api/col/sl/fa;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->i:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->i:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->h:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->h:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->g:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->g:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/amap/api/col/sl/fa;->k:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->c:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->d:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->b:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/amap/api/col/sl/fa;->k:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->c:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->d:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/sl/fa;->b:I

    iget v3, p0, Lcom/amap/api/col/sl/fa;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/fa;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/fa;->h:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/fa;->i:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/fa;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "unknown"

    iget v1, p0, Lcom/amap/api/col/sl/fa;->k:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/sl/fa;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/sl/fa;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/sl/fa;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/sl/fa;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/sl/fa;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/sl/fa;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/sl/fa;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/sl/fa;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/sl/fa;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/sl/fa;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/sl/fa;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/sl/fa;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/sl/fa;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/sl/fa;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/sl/fa;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/sl/fa;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/sl/fa;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/sl/fa;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/sl/fa;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/sl/fa;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/sl/fa;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/sl/fa;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/sl/fa;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/sl/fa;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/sl/fa;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/sl/fa;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/sl/fa;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/sl/fa;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
