package com.ifengyu.im.imservice.entity;

import java.util.List;

public class TestBean {
    private DataBean data;
    private String desc;
    private String status;

    public static class DataBean {
        private List<GoodsListBean> goodsList;
        private Object goodsListBrand;

        public static class GoodsListBean {
            private String content;
            private String good_header;
            private String good_name;
            private int good_price;
            private long id;

            public String getGood_header() {
                return this.good_header;
            }

            public void setGood_header(String str) {
                this.good_header = str;
            }

            public String getGood_name() {
                return this.good_name;
            }

            public void setGood_name(String str) {
                this.good_name = str;
            }

            public String getContent() {
                return this.content;
            }

            public void setContent(String str) {
                this.content = str;
            }

            public int getGood_price() {
                return this.good_price;
            }

            public void setGood_price(int i) {
                this.good_price = i;
            }

            public long getId() {
                return this.id;
            }

            public void setId(long j) {
                this.id = j;
            }

            public String toString() {
                return "GoodsListBean{good_header='" + this.good_header + '\'' + ", good_name='" + this.good_name + '\'' + ", content='" + this.content + '\'' + ", good_price=" + this.good_price + ", id=" + this.id + '}';
            }
        }

        public Object getGoodsListBrand() {
            return this.goodsListBrand;
        }

        public void setGoodsListBrand(Object obj) {
            this.goodsListBrand = obj;
        }

        public List<GoodsListBean> getGoodsList() {
            return this.goodsList;
        }

        public void setGoodsList(List<GoodsListBean> list) {
            this.goodsList = list;
        }

        public String toString() {
            return "DataBean{goodsListBrand=" + this.goodsListBrand + ", goodsList=" + this.goodsList + '}';
        }
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public String toString() {
        return "TestBean{status='" + this.status + '\'' + ", data=" + this.data + ", desc='" + this.desc + '\'' + '}';
    }
}
