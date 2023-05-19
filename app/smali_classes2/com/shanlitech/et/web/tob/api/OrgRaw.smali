.class Lcom/shanlitech/et/web/tob/api/OrgRaw;
.super Ljava/lang/Object;
.source "OrgRaw.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public comorgVoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/tob/api/OrgName;",
            ">;"
        }
    .end annotation
.end field

.field public orgUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/shanlitech/et/web/tob/api/OrgUser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
