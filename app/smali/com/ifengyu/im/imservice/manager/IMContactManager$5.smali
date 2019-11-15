.class Lcom/ifengyu/im/imservice/manager/IMContactManager$5;
.super Ljava/lang/Object;
.source "IMContactManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/im/imservice/manager/IMContactManager;->getDepartmentTabSortedList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ifengyu/im/DB/entity/UserEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/im/imservice/manager/IMContactManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$5;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ifengyu/im/DB/entity/UserEntity;Lcom/ifengyu/im/DB/entity/UserEntity;)I
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$5;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {v0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getDepartmentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/manager/IMContactManager$5;->this$0:Lcom/ifengyu/im/imservice/manager/IMContactManager;

    invoke-static {v1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->access$000(Lcom/ifengyu/im/imservice/manager/IMContactManager;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getDepartmentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/im/DB/entity/DepartmentEntity;

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getDepartmentId()I

    move-result v3

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getDepartmentId()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/im/utils/pinyin/PinYin;->getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    iget-object v1, v1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getDepartName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getDepartName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getDepartName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getDepartName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ifengyu/im/DB/entity/UserEntity;

    check-cast p2, Lcom/ifengyu/im/DB/entity/UserEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/imservice/manager/IMContactManager$5;->compare(Lcom/ifengyu/im/DB/entity/UserEntity;Lcom/ifengyu/im/DB/entity/UserEntity;)I

    move-result v0

    return v0
.end method
