.class public interface abstract Lcom/shanlitech/et/api/model/PocAccount;
.super Ljava/lang/Object;
.source "PocAccount.java"


# virtual methods
.method public abstract getPocGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/api/model/PocGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loginWitchSIM(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method
