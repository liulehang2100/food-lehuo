package com.food.lehuo.bean;

import java.util.ArrayList;
import java.util.List;

public class FoodExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FoodExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andFidIsNull() {
            addCriterion("fid is null");
            return (Criteria) this;
        }

        public Criteria andFidIsNotNull() {
            addCriterion("fid is not null");
            return (Criteria) this;
        }

        public Criteria andFidEqualTo(Integer value) {
            addCriterion("fid =", value, "fid");
            return (Criteria) this;
        }

        public Criteria andFidNotEqualTo(Integer value) {
            addCriterion("fid <>", value, "fid");
            return (Criteria) this;
        }

        public Criteria andFidGreaterThan(Integer value) {
            addCriterion("fid >", value, "fid");
            return (Criteria) this;
        }

        public Criteria andFidGreaterThanOrEqualTo(Integer value) {
            addCriterion("fid >=", value, "fid");
            return (Criteria) this;
        }

        public Criteria andFidLessThan(Integer value) {
            addCriterion("fid <", value, "fid");
            return (Criteria) this;
        }

        public Criteria andFidLessThanOrEqualTo(Integer value) {
            addCriterion("fid <=", value, "fid");
            return (Criteria) this;
        }

        public Criteria andFidIn(List<Integer> values) {
            addCriterion("fid in", values, "fid");
            return (Criteria) this;
        }

        public Criteria andFidNotIn(List<Integer> values) {
            addCriterion("fid not in", values, "fid");
            return (Criteria) this;
        }

        public Criteria andFidBetween(Integer value1, Integer value2) {
            addCriterion("fid between", value1, value2, "fid");
            return (Criteria) this;
        }

        public Criteria andFidNotBetween(Integer value1, Integer value2) {
            addCriterion("fid not between", value1, value2, "fid");
            return (Criteria) this;
        }

        public Criteria andFnameIsNull() {
            addCriterion("fname is null");
            return (Criteria) this;
        }

        public Criteria andFnameIsNotNull() {
            addCriterion("fname is not null");
            return (Criteria) this;
        }

        public Criteria andFnameEqualTo(String value) {
            addCriterion("fname =", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameNotEqualTo(String value) {
            addCriterion("fname <>", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameGreaterThan(String value) {
            addCriterion("fname >", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameGreaterThanOrEqualTo(String value) {
            addCriterion("fname >=", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameLessThan(String value) {
            addCriterion("fname <", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameLessThanOrEqualTo(String value) {
            addCriterion("fname <=", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameLike(String value) {
            addCriterion("fname like", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameNotLike(String value) {
            addCriterion("fname not like", value, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameIn(List<String> values) {
            addCriterion("fname in", values, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameNotIn(List<String> values) {
            addCriterion("fname not in", values, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameBetween(String value1, String value2) {
            addCriterion("fname between", value1, value2, "fname");
            return (Criteria) this;
        }

        public Criteria andFnameNotBetween(String value1, String value2) {
            addCriterion("fname not between", value1, value2, "fname");
            return (Criteria) this;
        }

        public Criteria andFportraitIsNull() {
            addCriterion("fportrait is null");
            return (Criteria) this;
        }

        public Criteria andFportraitIsNotNull() {
            addCriterion("fportrait is not null");
            return (Criteria) this;
        }

        public Criteria andFportraitEqualTo(String value) {
            addCriterion("fportrait =", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitNotEqualTo(String value) {
            addCriterion("fportrait <>", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitGreaterThan(String value) {
            addCriterion("fportrait >", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitGreaterThanOrEqualTo(String value) {
            addCriterion("fportrait >=", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitLessThan(String value) {
            addCriterion("fportrait <", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitLessThanOrEqualTo(String value) {
            addCriterion("fportrait <=", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitLike(String value) {
            addCriterion("fportrait like", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitNotLike(String value) {
            addCriterion("fportrait not like", value, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitIn(List<String> values) {
            addCriterion("fportrait in", values, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitNotIn(List<String> values) {
            addCriterion("fportrait not in", values, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitBetween(String value1, String value2) {
            addCriterion("fportrait between", value1, value2, "fportrait");
            return (Criteria) this;
        }

        public Criteria andFportraitNotBetween(String value1, String value2) {
            addCriterion("fportrait not between", value1, value2, "fportrait");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(Double value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(Double value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(Double value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(Double value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(Double value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<Double> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<Double> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(Double value1, Double value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(Double value1, Double value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andFdescribeIsNull() {
            addCriterion("fdescribe is null");
            return (Criteria) this;
        }

        public Criteria andFdescribeIsNotNull() {
            addCriterion("fdescribe is not null");
            return (Criteria) this;
        }

        public Criteria andFdescribeEqualTo(String value) {
            addCriterion("fdescribe =", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeNotEqualTo(String value) {
            addCriterion("fdescribe <>", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeGreaterThan(String value) {
            addCriterion("fdescribe >", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeGreaterThanOrEqualTo(String value) {
            addCriterion("fdescribe >=", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeLessThan(String value) {
            addCriterion("fdescribe <", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeLessThanOrEqualTo(String value) {
            addCriterion("fdescribe <=", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeLike(String value) {
            addCriterion("fdescribe like", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeNotLike(String value) {
            addCriterion("fdescribe not like", value, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeIn(List<String> values) {
            addCriterion("fdescribe in", values, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeNotIn(List<String> values) {
            addCriterion("fdescribe not in", values, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeBetween(String value1, String value2) {
            addCriterion("fdescribe between", value1, value2, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andFdescribeNotBetween(String value1, String value2) {
            addCriterion("fdescribe not between", value1, value2, "fdescribe");
            return (Criteria) this;
        }

        public Criteria andWeightIsNull() {
            addCriterion("weight is null");
            return (Criteria) this;
        }

        public Criteria andWeightIsNotNull() {
            addCriterion("weight is not null");
            return (Criteria) this;
        }

        public Criteria andWeightEqualTo(Integer value) {
            addCriterion("weight =", value, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightNotEqualTo(Integer value) {
            addCriterion("weight <>", value, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightGreaterThan(Integer value) {
            addCriterion("weight >", value, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightGreaterThanOrEqualTo(Integer value) {
            addCriterion("weight >=", value, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightLessThan(Integer value) {
            addCriterion("weight <", value, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightLessThanOrEqualTo(Integer value) {
            addCriterion("weight <=", value, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightIn(List<Integer> values) {
            addCriterion("weight in", values, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightNotIn(List<Integer> values) {
            addCriterion("weight not in", values, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightBetween(Integer value1, Integer value2) {
            addCriterion("weight between", value1, value2, "weight");
            return (Criteria) this;
        }

        public Criteria andWeightNotBetween(Integer value1, Integer value2) {
            addCriterion("weight not between", value1, value2, "weight");
            return (Criteria) this;
        }

        public Criteria andRecommendIsNull() {
            addCriterion("recommend is null");
            return (Criteria) this;
        }

        public Criteria andRecommendIsNotNull() {
            addCriterion("recommend is not null");
            return (Criteria) this;
        }

        public Criteria andRecommendEqualTo(Integer value) {
            addCriterion("recommend =", value, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendNotEqualTo(Integer value) {
            addCriterion("recommend <>", value, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendGreaterThan(Integer value) {
            addCriterion("recommend >", value, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendGreaterThanOrEqualTo(Integer value) {
            addCriterion("recommend >=", value, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendLessThan(Integer value) {
            addCriterion("recommend <", value, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendLessThanOrEqualTo(Integer value) {
            addCriterion("recommend <=", value, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendIn(List<Integer> values) {
            addCriterion("recommend in", values, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendNotIn(List<Integer> values) {
            addCriterion("recommend not in", values, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendBetween(Integer value1, Integer value2) {
            addCriterion("recommend between", value1, value2, "recommend");
            return (Criteria) this;
        }

        public Criteria andRecommendNotBetween(Integer value1, Integer value2) {
            addCriterion("recommend not between", value1, value2, "recommend");
            return (Criteria) this;
        }

        public Criteria andCuisineIsNull() {
            addCriterion("cuisine is null");
            return (Criteria) this;
        }

        public Criteria andCuisineIsNotNull() {
            addCriterion("cuisine is not null");
            return (Criteria) this;
        }

        public Criteria andCuisineEqualTo(Integer value) {
            addCriterion("cuisine =", value, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineNotEqualTo(Integer value) {
            addCriterion("cuisine <>", value, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineGreaterThan(Integer value) {
            addCriterion("cuisine >", value, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineGreaterThanOrEqualTo(Integer value) {
            addCriterion("cuisine >=", value, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineLessThan(Integer value) {
            addCriterion("cuisine <", value, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineLessThanOrEqualTo(Integer value) {
            addCriterion("cuisine <=", value, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineIn(List<Integer> values) {
            addCriterion("cuisine in", values, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineNotIn(List<Integer> values) {
            addCriterion("cuisine not in", values, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineBetween(Integer value1, Integer value2) {
            addCriterion("cuisine between", value1, value2, "cuisine");
            return (Criteria) this;
        }

        public Criteria andCuisineNotBetween(Integer value1, Integer value2) {
            addCriterion("cuisine not between", value1, value2, "cuisine");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}