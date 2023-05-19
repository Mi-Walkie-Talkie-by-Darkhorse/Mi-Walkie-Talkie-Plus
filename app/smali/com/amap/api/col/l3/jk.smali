.class public final Lcom/amap/api/col/l3/jk;
.super Ljava/lang/Object;
.source "Cgi.java"


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

.field public o:I

.field public p:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/col/l3/jk;->a:I

    .line 3
    iput v0, p0, Lcom/amap/api/col/l3/jk;->b:I

    .line 4
    iput v0, p0, Lcom/amap/api/col/l3/jk;->c:I

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/jk;->d:I

    .line 6
    iput v0, p0, Lcom/amap/api/col/l3/jk;->e:I

    .line 7
    iput v0, p0, Lcom/amap/api/col/l3/jk;->f:I

    .line 8
    iput v0, p0, Lcom/amap/api/col/l3/jk;->g:I

    .line 9
    iput v0, p0, Lcom/amap/api/col/l3/jk;->h:I

    .line 10
    iput v0, p0, Lcom/amap/api/col/l3/jk;->i:I

    const/16 v1, -0x71

    .line 11
    iput v1, p0, Lcom/amap/api/col/l3/jk;->j:I

    .line 12
    iput v0, p0, Lcom/amap/api/col/l3/jk;->k:I

    .line 13
    iput-short v0, p0, Lcom/amap/api/col/l3/jk;->l:S

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/amap/api/col/l3/jk;->m:J

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jk;->n:Z

    const/16 v0, 0x7fff

    .line 16
    iput v0, p0, Lcom/amap/api/col/l3/jk;->o:I

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jk;->p:Z

    .line 18
    iput p1, p0, Lcom/amap/api/col/l3/jk;->k:I

    .line 19
    iput-boolean p2, p0, Lcom/amap/api/col/l3/jk;->n:Z

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 2
    iget v2, p0, Lcom/amap/api/col/l3/jk;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "registered"

    .line 3
    iget-boolean v2, p0, Lcom/amap/api/col/l3/jk;->n:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mcc"

    .line 4
    iget v2, p0, Lcom/amap/api/col/l3/jk;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mnc"

    .line 5
    iget v2, p0, Lcom/amap/api/col/l3/jk;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lac"

    .line 6
    iget v2, p0, Lcom/amap/api/col/l3/jk;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cid"

    .line 7
    iget v2, p0, Lcom/amap/api/col/l3/jk;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sid"

    .line 8
    iget v2, p0, Lcom/amap/api/col/l3/jk;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "nid"

    .line 9
    iget v2, p0, Lcom/amap/api/col/l3/jk;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "bid"

    .line 10
    iget v2, p0, Lcom/amap/api/col/l3/jk;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sig"

    .line 11
    iget v2, p0, Lcom/amap/api/col/l3/jk;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pci"

    .line 12
    iget v2, p0, Lcom/amap/api/col/l3/jk;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "cgi"

    const-string v3, "toJson"

    .line 13
    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/jz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/amap/api/col/l3/jk;

    if-eqz v1, :cond_c

    .line 2
    check-cast p1, Lcom/amap/api/col/l3/jk;

    .line 3
    iget v1, p1, Lcom/amap/api/col/l3/jk;->k:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    return v0

    .line 4
    :cond_1
    iget v1, p0, Lcom/amap/api/col/l3/jk;->k:I

    if-eq v1, v3, :cond_2

    return v0

    .line 5
    :cond_2
    iget v1, p1, Lcom/amap/api/col/l3/jk;->c:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->c:I

    if-ne v1, v3, :cond_3

    iget v1, p1, Lcom/amap/api/col/l3/jk;->d:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->d:I

    if-ne v1, v3, :cond_3

    iget p1, p1, Lcom/amap/api/col/l3/jk;->b:I

    iget v1, p0, Lcom/amap/api/col/l3/jk;->b:I

    if-ne p1, v1, :cond_3

    return v2

    :cond_3
    return v0

    .line 6
    :cond_4
    iget v1, p0, Lcom/amap/api/col/l3/jk;->k:I

    if-eq v1, v3, :cond_5

    return v0

    .line 7
    :cond_5
    iget v1, p1, Lcom/amap/api/col/l3/jk;->c:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->c:I

    if-ne v1, v3, :cond_6

    iget v1, p1, Lcom/amap/api/col/l3/jk;->d:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->d:I

    if-ne v1, v3, :cond_6

    iget p1, p1, Lcom/amap/api/col/l3/jk;->b:I

    iget v1, p0, Lcom/amap/api/col/l3/jk;->b:I

    if-ne p1, v1, :cond_6

    return v2

    :cond_6
    return v0

    .line 8
    :cond_7
    iget v1, p0, Lcom/amap/api/col/l3/jk;->k:I

    if-eq v1, v3, :cond_8

    return v0

    .line 9
    :cond_8
    iget v1, p1, Lcom/amap/api/col/l3/jk;->i:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->i:I

    if-ne v1, v3, :cond_9

    iget v1, p1, Lcom/amap/api/col/l3/jk;->h:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->h:I

    if-ne v1, v3, :cond_9

    iget p1, p1, Lcom/amap/api/col/l3/jk;->g:I

    iget v1, p0, Lcom/amap/api/col/l3/jk;->g:I

    if-ne p1, v1, :cond_9

    return v2

    :cond_9
    return v0

    .line 10
    :cond_a
    iget v1, p0, Lcom/amap/api/col/l3/jk;->k:I

    if-eq v1, v2, :cond_b

    return v0

    .line 11
    :cond_b
    iget v1, p1, Lcom/amap/api/col/l3/jk;->c:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->c:I

    if-ne v1, v3, :cond_c

    iget v1, p1, Lcom/amap/api/col/l3/jk;->d:I

    iget v3, p0, Lcom/amap/api/col/l3/jk;->d:I

    if-ne v1, v3, :cond_c

    iget p1, p1, Lcom/amap/api/col/l3/jk;->b:I

    iget v1, p0, Lcom/amap/api/col/l3/jk;->b:I

    if-ne p1, v1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/jk;->k:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/amap/api/col/l3/jk;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Lcom/amap/api/col/l3/jk;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3/jk;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/amap/api/col/l3/jk;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3/jk;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/amap/api/col/l3/jk;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/jk;->k:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_2

    const/16 v9, 0x8

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    const-string v0, "unknown"

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/amap/api/col/l3/jk;->c:I

    .line 3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget v3, p0, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    iget v3, p0, Lcom/amap/api/col/l3/jk;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v7

    iget-boolean v3, p0, Lcom/amap/api/col/l3/jk;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v6

    iget v3, p0, Lcom/amap/api/col/l3/jk;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v5

    iget-short v3, p0, Lcom/amap/api/col/l3/jk;->l:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v9, v2

    iget-boolean v2, p0, Lcom/amap/api/col/l3/jk;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v1

    iget v1, p0, Lcom/amap/api/col/l3/jk;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v4

    const-string v1, "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b, pci=%d"

    .line 4
    invoke-static {v0, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/amap/api/col/l3/jk;->c:I

    .line 6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget v3, p0, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v8

    iget v3, p0, Lcom/amap/api/col/l3/jk;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v7

    iget-boolean v3, p0, Lcom/amap/api/col/l3/jk;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v6

    iget v3, p0, Lcom/amap/api/col/l3/jk;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v5

    iget-short v3, p0, Lcom/amap/api/col/l3/jk;->l:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v9, v2

    iget-boolean v2, p0, Lcom/amap/api/col/l3/jk;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v1

    iget v1, p0, Lcom/amap/api/col/l3/jk;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v4

    const-string v1, "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b, pci=%d"

    .line 7
    invoke-static {v0, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/amap/api/col/l3/jk;->i:I

    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v3

    iget v3, p0, Lcom/amap/api/col/l3/jk;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    iget v3, p0, Lcom/amap/api/col/l3/jk;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    iget-boolean v3, p0, Lcom/amap/api/col/l3/jk;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v6

    iget v3, p0, Lcom/amap/api/col/l3/jk;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    iget-short v3, p0, Lcom/amap/api/col/l3/jk;->l:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v4, v2

    iget-boolean v2, p0, Lcom/amap/api/col/l3/jk;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b"

    .line 10
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/amap/api/col/l3/jk;->c:I

    .line 12
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v3

    iget v3, p0, Lcom/amap/api/col/l3/jk;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    iget v3, p0, Lcom/amap/api/col/l3/jk;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v7

    iget-boolean v3, p0, Lcom/amap/api/col/l3/jk;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v6

    iget v3, p0, Lcom/amap/api/col/l3/jk;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    iget-short v3, p0, Lcom/amap/api/col/l3/jk;->l:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v4, v2

    iget-boolean v2, p0, Lcom/amap/api/col/l3/jk;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    .line 13
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
